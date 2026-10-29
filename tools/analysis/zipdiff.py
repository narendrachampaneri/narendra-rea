# Compare two APKs entry-by-entry by SHA-256 of uncompressed content.
import hashlib, sys, zipfile
def entries(p):
    with zipfile.ZipFile(p) as z:
        return {i.filename: hashlib.sha256(z.read(i)).hexdigest() for i in z.infolist() if not i.is_dir()}
a, b = entries(sys.argv[1]), entries(sys.argv[2])
same = [k for k in a if k in b and a[k] == b[k]]
changed = sorted(k for k in a if k in b and a[k] != b[k])
only_a, only_b = sorted(set(a) - set(b)), sorted(set(b) - set(a))
print(f"original entries {len(a)}, rebuilt entries {len(b)}, byte-identical {len(same)}, changed {len(changed)}, only-original {len(only_a)}, only-rebuilt {len(only_b)}")
def bucket(names):
    c = {}
    for n in names:
        k = n.split('/')[0] + ('/' + n.split('/')[1] if n.startswith(('res/', 'assets/', 'lib/')) and n.count('/') > 1 else '')
        c[k] = c.get(k, 0) + 1
    return dict(sorted(c.items(), key=lambda x: -x[1]))
print("changed:", changed[:12], "..." if len(changed) > 12 else "")
print("only-original by dir:", bucket(only_a)); print("  e.g.", only_a[:8])
print("only-rebuilt by dir:", bucket(only_b)); print("  e.g.", only_b[:8])
for k in ("lib/armeabi-v7a/libcocos2dcpp.so", "assets/da2sound16.ckb", "assets/api_key.txt"):
    print(f"{k}: {'IDENTICAL' if a.get(k) == b.get(k) else 'DIFFERENT'}")
print("all assets/ identical:", all(a[k] == b.get(k) for k in a if k.startswith('assets/')), "| all lib/ identical:", all(a[k] == b.get(k) for k in a if k.startswith('lib/')))
