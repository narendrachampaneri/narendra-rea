// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- b2TreeNode::IsLeaf  @ 0x6c6530
/* b2TreeNode::IsLeaf() const */

bool __thiscall b2TreeNode::IsLeaf(b2TreeNode *this)

{
  return *(int *)(this + 0x18) == -1;
}
