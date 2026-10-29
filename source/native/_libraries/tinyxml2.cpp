// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 285 functions

// ---- tinyxml2::XMLVisitor::~XMLVisitor  @ 0x5d61e4
/* WARNING: Removing unreachable block (ram,0x005d61fe) */
/* tinyxml2::XMLVisitor::~XMLVisitor() */

XMLVisitor * __thiscall tinyxml2::XMLVisitor::~XMLVisitor(XMLVisitor *this)

{
  *(undefined ***)this = &PTR__XMLVisitor_1_00935fa0;
  return this;
}

// ---- tinyxml2::XMLVisitor::~XMLVisitor  @ 0x5d6218
/* tinyxml2::XMLVisitor::~XMLVisitor() */

XMLVisitor * __thiscall tinyxml2::XMLVisitor::~XMLVisitor(XMLVisitor *this)

{
  ~XMLVisitor(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLVisitor::VisitEnter  @ 0x5d6234
/* tinyxml2::XMLVisitor::VisitEnter(tinyxml2::XMLDocument const&) */

undefined4 tinyxml2::XMLVisitor::VisitEnter(XMLDocument *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::VisitExit  @ 0x5d6244
/* tinyxml2::XMLVisitor::VisitExit(tinyxml2::XMLDocument const&) */

undefined4 tinyxml2::XMLVisitor::VisitExit(XMLDocument *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::VisitEnter  @ 0x5d6254
/* tinyxml2::XMLVisitor::VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*) */

undefined4 tinyxml2::XMLVisitor::VisitEnter(XMLElement *param_1,XMLAttribute *param_2)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::VisitExit  @ 0x5d6264
/* tinyxml2::XMLVisitor::VisitExit(tinyxml2::XMLElement const&) */

undefined4 tinyxml2::XMLVisitor::VisitExit(XMLElement *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::Visit  @ 0x5d6274
/* tinyxml2::XMLVisitor::Visit(tinyxml2::XMLDeclaration const&) */

undefined4 tinyxml2::XMLVisitor::Visit(XMLDeclaration *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::Visit  @ 0x5d6284
/* tinyxml2::XMLVisitor::Visit(tinyxml2::XMLText const&) */

undefined4 tinyxml2::XMLVisitor::Visit(XMLText *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::Visit  @ 0x5d6294
/* tinyxml2::XMLVisitor::Visit(tinyxml2::XMLComment const&) */

undefined4 tinyxml2::XMLVisitor::Visit(XMLComment *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLVisitor::Visit  @ 0x5d62a4
/* tinyxml2::XMLVisitor::Visit(tinyxml2::XMLUnknown const&) */

undefined4 tinyxml2::XMLVisitor::Visit(XMLUnknown *param_1)

{
  return 1;
}

// ---- tinyxml2::XMLNode::Value  @ 0x5d62b4
/* tinyxml2::XMLNode::Value() const */

undefined4 __thiscall tinyxml2::XMLNode::Value(XMLNode *this)

{
  undefined4 uVar1;
  
  uVar1 = StrPair::GetStr((StrPair *)(this + 0xc));
  return uVar1;
}

// ---- tinyxml2::XMLAttribute::Name  @ 0x5d62d0
/* tinyxml2::XMLAttribute::Name() const */

undefined4 __thiscall tinyxml2::XMLAttribute::Name(XMLAttribute *this)

{
  undefined4 uVar1;
  
  uVar1 = StrPair::GetStr((StrPair *)(this + 4));
  return uVar1;
}

// ---- tinyxml2::XMLAttribute::Value  @ 0x5d62ec
/* tinyxml2::XMLAttribute::Value() const */

undefined4 __thiscall tinyxml2::XMLAttribute::Value(XMLAttribute *this)

{
  undefined4 uVar1;
  
  uVar1 = StrPair::GetStr((StrPair *)(this + 0x10));
  return uVar1;
}

// ---- tinyxml2::XMLAttribute::Next  @ 0x5d6308
/* tinyxml2::XMLAttribute::Next() const */

undefined4 __thiscall tinyxml2::XMLAttribute::Next(XMLAttribute *this)

{
  return *(undefined4 *)(this + 0x1c);
}

// ---- tinyxml2::XMLVisitor::XMLVisitor  @ 0x5d6318
/* tinyxml2::XMLVisitor::XMLVisitor() */

XMLVisitor * __thiscall tinyxml2::XMLVisitor::XMLVisitor(XMLVisitor *this)

{
  *(undefined ***)this = &PTR__XMLVisitor_1_00935fa0;
  return this;
}

// ---- tinyxml2::XMLNode::LinkEndChild  @ 0x5d6f5c
/* tinyxml2::XMLNode::LinkEndChild(tinyxml2::XMLNode*) */

undefined4 __thiscall tinyxml2::XMLNode::LinkEndChild(XMLNode *this,XMLNode *param_1)

{
  undefined4 uVar1;
  
  uVar1 = InsertEndChild(this,param_1);
  return uVar1;
}

// ---- tinyxml2::XMLElement::SetAttribute  @ 0x5d6f78
/* tinyxml2::XMLElement::SetAttribute(char const*, char const*) */

void __thiscall tinyxml2::XMLElement::SetAttribute(XMLElement *this,char *param_1,char *param_2)

{
  XMLAttribute *this_00;
  
  this_00 = (XMLAttribute *)FindOrCreateAttribute(this,param_1);
  XMLAttribute::SetAttribute(this_00,param_2);
  return;
}

// ---- tinyxml2::XMLNode::FirstChild  @ 0x5f1e9c
/* tinyxml2::XMLNode::FirstChild() */

undefined4 __thiscall tinyxml2::XMLNode::FirstChild(XMLNode *this)

{
  return *(undefined4 *)(this + 0x18);
}

// ---- tinyxml2::XMLNode::FirstChildElement  @ 0x5f1eac
/* tinyxml2::XMLNode::FirstChildElement(char const*) */

undefined4 __thiscall tinyxml2::XMLNode::FirstChildElement(XMLNode *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = FirstChildElement(this,param_1);
  return uVar1;
}

// ---- tinyxml2::XMLNode::NextSiblingElement  @ 0x5f1ec8
/* tinyxml2::XMLNode::NextSiblingElement(char const*) */

undefined4 __thiscall tinyxml2::XMLNode::NextSiblingElement(XMLNode *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = NextSiblingElement(this,param_1);
  return uVar1;
}

// ---- tinyxml2::XMLDocument::RootElement  @ 0x5f1ee4
/* tinyxml2::XMLDocument::RootElement() */

undefined4 __thiscall tinyxml2::XMLDocument::RootElement(XMLDocument *this)

{
  undefined4 uVar1;
  
  uVar1 = XMLNode::FirstChildElement((XMLNode *)this,(char *)0x0);
  return uVar1;
}

// ---- tinyxml2::XMLDocument::DeleteNode  @ 0x5f1f00
/* tinyxml2::XMLDocument::DeleteNode(tinyxml2::XMLNode*) */

void __thiscall tinyxml2::XMLDocument::DeleteNode(XMLDocument *this,XMLNode *param_1)

{
  XMLNode::DeleteChild(*(XMLNode **)(param_1 + 8),param_1);
  return;
}

// ---- tinyxml2::StrPair::StrPair  @ 0x5f43f0
/* tinyxml2::StrPair::StrPair() */

StrPair * __thiscall tinyxml2::StrPair::StrPair(StrPair *this)

{
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  return this;
}

// ---- tinyxml2::StrPair::Set  @ 0x5f4410
/* tinyxml2::StrPair::Set(char*, char*, int) */

void __thiscall tinyxml2::StrPair::Set(StrPair *this,char *param_1,char *param_2,int param_3)

{
  Reset(this);
  *(char **)(this + 4) = param_1;
  *(char **)(this + 8) = param_2;
  *(uint *)this = param_3 | 0x100;
  return;
}

// ---- tinyxml2::StrPair::Empty  @ 0x5f4440
/* tinyxml2::StrPair::Empty() const */

bool __thiscall tinyxml2::StrPair::Empty(StrPair *this)

{
  return *(int *)(this + 4) == *(int *)(this + 8);
}

// ---- tinyxml2::StrPair::SetInternedStr  @ 0x5f445c
/* tinyxml2::StrPair::SetInternedStr(char const*) */

void __thiscall tinyxml2::StrPair::SetInternedStr(StrPair *this,char *param_1)

{
  Reset(this);
  *(char **)(this + 4) = param_1;
  return;
}

// ---- tinyxml2::MemPool::MemPool  @ 0x5f4478
/* tinyxml2::MemPool::MemPool() */

MemPool * __thiscall tinyxml2::MemPool::MemPool(MemPool *this)

{
  *(undefined ***)this = &PTR__MemPool_1_00936e48;
  return this;
}

// ---- tinyxml2::MemPool::~MemPool  @ 0x5f449c
/* WARNING: Removing unreachable block (ram,0x005f44b6) */
/* tinyxml2::MemPool::~MemPool() */

MemPool * __thiscall tinyxml2::MemPool::~MemPool(MemPool *this)

{
  *(undefined ***)this = &PTR__MemPool_1_00936e48;
  return this;
}

// ---- tinyxml2::MemPool::~MemPool  @ 0x5f44d0
/* tinyxml2::MemPool::~MemPool() */

MemPool * __thiscall tinyxml2::MemPool::~MemPool(MemPool *this)

{
  ~MemPool(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLUtil::SkipWhiteSpace  @ 0x5f44ec
/* tinyxml2::XMLUtil::SkipWhiteSpace(char const*) */

byte * tinyxml2::XMLUtil::SkipWhiteSpace(char *param_1)

{
  bool bVar1;
  int iVar2;
  byte *local_c;
  
  local_c = (byte *)param_1;
  while( true ) {
    iVar2 = IsUTF8Continuation(*local_c);
    if ((iVar2 == 0) && (iVar2 = isspace((uint)*local_c), iVar2 != 0)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (!bVar1) break;
    local_c = local_c + 1;
  }
  return local_c;
}

// ---- tinyxml2::XMLUtil::SkipWhiteSpace  @ 0x5f4530
/* tinyxml2::XMLUtil::SkipWhiteSpace(char*) */

byte * tinyxml2::XMLUtil::SkipWhiteSpace(char *param_1)

{
  bool bVar1;
  int iVar2;
  byte *local_c;
  
  local_c = (byte *)param_1;
  while( true ) {
    iVar2 = IsUTF8Continuation(*local_c);
    if ((iVar2 == 0) && (iVar2 = isspace((uint)*local_c), iVar2 != 0)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (!bVar1) break;
    local_c = local_c + 1;
  }
  return local_c;
}

// ---- tinyxml2::XMLUtil::IsWhiteSpace  @ 0x5f4574
/* tinyxml2::XMLUtil::IsWhiteSpace(char) */

undefined4 tinyxml2::XMLUtil::IsWhiteSpace(char param_1)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = IsUTF8Continuation(param_1);
  if ((iVar1 == 0) && (iVar1 = isspace((uint)(byte)param_1), iVar1 != 0)) {
    uVar2 = 1;
  }
  else {
    uVar2 = 0;
  }
  return uVar2;
}

// ---- tinyxml2::XMLUtil::StringEqual  @ 0x5f45ac
/* tinyxml2::XMLUtil::StringEqual(char const*, char const*, int) */

undefined4 tinyxml2::XMLUtil::StringEqual(char *param_1,char *param_2,int param_3)

{
  undefined4 uVar1;
  char *local_10;
  char *local_c;
  int local_4;
  
  local_4 = 0;
  local_10 = param_2;
  local_c = param_1;
  if (param_1 == param_2) {
    uVar1 = 1;
  }
  else {
    for (; (((*local_c != '\0' && (*local_10 != '\0')) && (*local_c == *local_10)) &&
           (local_4 < param_3)); local_4 = local_4 + 1) {
      local_c = local_c + 1;
      local_10 = local_10 + 1;
    }
    if ((local_4 == param_3) || ((*local_c == '\0' && (*local_10 == '\0')))) {
      uVar1 = 1;
    }
    else {
      uVar1 = 0;
    }
  }
  return uVar1;
}

// ---- tinyxml2::XMLUtil::IsUTF8Continuation  @ 0x5f4620
/* tinyxml2::XMLUtil::IsUTF8Continuation(char) */

byte tinyxml2::XMLUtil::IsUTF8Continuation(char param_1)

{
  return param_1 & 0x80;
}

// ---- tinyxml2::XMLUtil::IsAlphaNum  @ 0x5f4638
/* tinyxml2::XMLUtil::IsAlphaNum(unsigned char) */

int tinyxml2::XMLUtil::IsAlphaNum(uchar param_1)

{
  int iVar1;
  
  if ((char)param_1 < '\0') {
    iVar1 = 1;
  }
  else {
    iVar1 = isalnum((uint)param_1);
  }
  return iVar1;
}

// ---- tinyxml2::XMLUtil::IsAlpha  @ 0x5f4664
/* tinyxml2::XMLUtil::IsAlpha(unsigned char) */

int tinyxml2::XMLUtil::IsAlpha(uchar param_1)

{
  int iVar1;
  
  if ((char)param_1 < '\0') {
    iVar1 = 1;
  }
  else {
    iVar1 = isalpha((uint)param_1);
  }
  return iVar1;
}

// ---- tinyxml2::XMLNode::ToElement  @ 0x5f4690
/* tinyxml2::XMLNode::ToElement() */

undefined4 tinyxml2::XMLNode::ToElement(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToText  @ 0x5f469c
/* tinyxml2::XMLNode::ToText() */

undefined4 tinyxml2::XMLNode::ToText(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToComment  @ 0x5f46a8
/* tinyxml2::XMLNode::ToComment() */

undefined4 tinyxml2::XMLNode::ToComment(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToDocument  @ 0x5f46b4
/* tinyxml2::XMLNode::ToDocument() */

undefined4 tinyxml2::XMLNode::ToDocument(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToDeclaration  @ 0x5f46c0
/* tinyxml2::XMLNode::ToDeclaration() */

undefined4 tinyxml2::XMLNode::ToDeclaration(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToUnknown  @ 0x5f46cc
/* tinyxml2::XMLNode::ToUnknown() */

undefined4 tinyxml2::XMLNode::ToUnknown(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToElement  @ 0x5f46d8
/* tinyxml2::XMLNode::ToElement() const */

undefined4 tinyxml2::XMLNode::ToElement(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToText  @ 0x5f46e4
/* tinyxml2::XMLNode::ToText() const */

undefined4 tinyxml2::XMLNode::ToText(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToComment  @ 0x5f46f0
/* tinyxml2::XMLNode::ToComment() const */

undefined4 tinyxml2::XMLNode::ToComment(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToDocument  @ 0x5f46fc
/* tinyxml2::XMLNode::ToDocument() const */

undefined4 tinyxml2::XMLNode::ToDocument(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToDeclaration  @ 0x5f4708
/* tinyxml2::XMLNode::ToDeclaration() const */

undefined4 tinyxml2::XMLNode::ToDeclaration(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::ToUnknown  @ 0x5f4714
/* tinyxml2::XMLNode::ToUnknown() const */

undefined4 tinyxml2::XMLNode::ToUnknown(void)

{
  return 0;
}

// ---- tinyxml2::XMLNode::FirstChild  @ 0x5f4720
/* tinyxml2::XMLNode::FirstChild() const */

undefined4 __thiscall tinyxml2::XMLNode::FirstChild(XMLNode *this)

{
  return *(undefined4 *)(this + 0x18);
}

// ---- tinyxml2::XMLNode::NextSibling  @ 0x5f4730
/* tinyxml2::XMLNode::NextSibling() const */

undefined4 __thiscall tinyxml2::XMLNode::NextSibling(XMLNode *this)

{
  return *(undefined4 *)(this + 0x24);
}

// ---- tinyxml2::XMLText::ToText  @ 0x5f4740
/* tinyxml2::XMLText::ToText() */

XMLText * __thiscall tinyxml2::XMLText::ToText(XMLText *this)

{
  return this;
}

// ---- tinyxml2::XMLText::ToText  @ 0x5f474c
/* tinyxml2::XMLText::ToText() const */

XMLText * __thiscall tinyxml2::XMLText::ToText(XMLText *this)

{
  return this;
}

// ---- tinyxml2::XMLText::SetCData  @ 0x5f4758
/* tinyxml2::XMLText::SetCData(bool) */

void __thiscall tinyxml2::XMLText::SetCData(XMLText *this,bool param_1)

{
  this[0x2c] = (XMLText)param_1;
  return;
}

// ---- tinyxml2::XMLText::CData  @ 0x5f4770
/* tinyxml2::XMLText::CData() const */

XMLText __thiscall tinyxml2::XMLText::CData(XMLText *this)

{
  return this[0x2c];
}

// ---- tinyxml2::XMLText::XMLText  @ 0x5f4780
/* tinyxml2::XMLText::XMLText(tinyxml2::XMLDocument*) */

XMLText * __thiscall tinyxml2::XMLText::XMLText(XMLText *this,XMLDocument *param_1)

{
  XMLNode::XMLNode((XMLNode *)this,param_1);
  *(undefined ***)this = &PTR_ToElement_1_00936cb8;
  this[0x2c] = (XMLText)0x0;
  return this;
}

// ---- tinyxml2::XMLText::~XMLText  @ 0x5f47b8
/* WARNING: Removing unreachable block (ram,0x005f47da) */
/* tinyxml2::XMLText::~XMLText() */

XMLText * __thiscall tinyxml2::XMLText::~XMLText(XMLText *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936cb8;
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLText::~XMLText  @ 0x5f47f4
/* tinyxml2::XMLText::~XMLText() */

XMLText * __thiscall tinyxml2::XMLText::~XMLText(XMLText *this)

{
  ~XMLText(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLComment::ToComment  @ 0x5f4810
/* tinyxml2::XMLComment::ToComment() */

XMLComment * __thiscall tinyxml2::XMLComment::ToComment(XMLComment *this)

{
  return this;
}

// ---- tinyxml2::XMLComment::ToComment  @ 0x5f481c
/* tinyxml2::XMLComment::ToComment() const */

XMLComment * __thiscall tinyxml2::XMLComment::ToComment(XMLComment *this)

{
  return this;
}

// ---- tinyxml2::XMLDeclaration::ToDeclaration  @ 0x5f4828
/* tinyxml2::XMLDeclaration::ToDeclaration() */

XMLDeclaration * __thiscall tinyxml2::XMLDeclaration::ToDeclaration(XMLDeclaration *this)

{
  return this;
}

// ---- tinyxml2::XMLDeclaration::ToDeclaration  @ 0x5f4834
/* tinyxml2::XMLDeclaration::ToDeclaration() const */

XMLDeclaration * __thiscall tinyxml2::XMLDeclaration::ToDeclaration(XMLDeclaration *this)

{
  return this;
}

// ---- tinyxml2::XMLUnknown::ToUnknown  @ 0x5f4840
/* tinyxml2::XMLUnknown::ToUnknown() */

XMLUnknown * __thiscall tinyxml2::XMLUnknown::ToUnknown(XMLUnknown *this)

{
  return this;
}

// ---- tinyxml2::XMLUnknown::ToUnknown  @ 0x5f484c
/* tinyxml2::XMLUnknown::ToUnknown() const */

XMLUnknown * __thiscall tinyxml2::XMLUnknown::ToUnknown(XMLUnknown *this)

{
  return this;
}

// ---- tinyxml2::XMLAttribute::XMLAttribute  @ 0x5f4858
/* tinyxml2::XMLAttribute::XMLAttribute() */

XMLAttribute * __thiscall tinyxml2::XMLAttribute::XMLAttribute(XMLAttribute *this)

{
  *(undefined ***)this = &PTR__XMLAttribute_1_00936e38;
  StrPair::StrPair((StrPair *)(this + 4));
  StrPair::StrPair((StrPair *)(this + 0x10));
  *(undefined4 *)(this + 0x1c) = 0;
  return this;
}

// ---- tinyxml2::XMLAttribute::~XMLAttribute  @ 0x5f4898
/* WARNING: Removing unreachable block (ram,0x005f48c6) */
/* tinyxml2::XMLAttribute::~XMLAttribute() */

XMLAttribute * __thiscall tinyxml2::XMLAttribute::~XMLAttribute(XMLAttribute *this)

{
  *(undefined ***)this = &PTR__XMLAttribute_1_00936e38;
  StrPair::~StrPair((StrPair *)(this + 0x10));
  StrPair::~StrPair((StrPair *)(this + 4));
  return this;
}

// ---- tinyxml2::XMLAttribute::~XMLAttribute  @ 0x5f48e0
/* tinyxml2::XMLAttribute::~XMLAttribute() */

XMLAttribute * __thiscall tinyxml2::XMLAttribute::~XMLAttribute(XMLAttribute *this)

{
  ~XMLAttribute(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLElement::Name  @ 0x5f48fc
/* tinyxml2::XMLElement::Name() const */

undefined4 __thiscall tinyxml2::XMLElement::Name(XMLElement *this)

{
  undefined4 uVar1;
  
  uVar1 = XMLNode::Value((XMLNode *)this);
  return uVar1;
}

// ---- tinyxml2::XMLElement::SetName  @ 0x5f4914
/* tinyxml2::XMLElement::SetName(char const*, bool) */

void __thiscall tinyxml2::XMLElement::SetName(XMLElement *this,char *param_1,bool param_2)

{
  XMLNode::SetValue((XMLNode *)this,param_1,param_2);
  return;
}

// ---- tinyxml2::XMLElement::ToElement  @ 0x5f4938
/* tinyxml2::XMLElement::ToElement() */

XMLElement * __thiscall tinyxml2::XMLElement::ToElement(XMLElement *this)

{
  return this;
}

// ---- tinyxml2::XMLElement::ToElement  @ 0x5f4944
/* tinyxml2::XMLElement::ToElement() const */

XMLElement * __thiscall tinyxml2::XMLElement::ToElement(XMLElement *this)

{
  return this;
}

// ---- tinyxml2::XMLElement::FirstAttribute  @ 0x5f4950
/* tinyxml2::XMLElement::FirstAttribute() const */

undefined4 __thiscall tinyxml2::XMLElement::FirstAttribute(XMLElement *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- tinyxml2::XMLElement::ClosingType  @ 0x5f4960
/* tinyxml2::XMLElement::ClosingType() const */

undefined4 __thiscall tinyxml2::XMLElement::ClosingType(XMLElement *this)

{
  return *(undefined4 *)(this + 0x2c);
}

// ---- tinyxml2::XMLDocument::ToDocument  @ 0x5f4970
/* tinyxml2::XMLDocument::ToDocument() */

XMLDocument * __thiscall tinyxml2::XMLDocument::ToDocument(XMLDocument *this)

{
  return this;
}

// ---- tinyxml2::XMLDocument::ToDocument  @ 0x5f497c
/* tinyxml2::XMLDocument::ToDocument() const */

XMLDocument * __thiscall tinyxml2::XMLDocument::ToDocument(XMLDocument *this)

{
  return this;
}

// ---- tinyxml2::XMLDocument::ProcessEntities  @ 0x5f4988
/* tinyxml2::XMLDocument::ProcessEntities() const */

XMLDocument __thiscall tinyxml2::XMLDocument::ProcessEntities(XMLDocument *this)

{
  return this[0x2d];
}

// ---- tinyxml2::XMLDocument::WhitespaceMode  @ 0x5f4998
/* tinyxml2::XMLDocument::WhitespaceMode() const */

undefined4 __thiscall tinyxml2::XMLDocument::WhitespaceMode(XMLDocument *this)

{
  return *(undefined4 *)(this + 0x34);
}

// ---- tinyxml2::XMLDocument::HasBOM  @ 0x5f49a8
/* tinyxml2::XMLDocument::HasBOM() const */

XMLDocument __thiscall tinyxml2::XMLDocument::HasBOM(XMLDocument *this)

{
  return this[0x2c];
}

// ---- tinyxml2::XMLDocument::Error  @ 0x5f49b8
/* tinyxml2::XMLDocument::Error() const */

bool __thiscall tinyxml2::XMLDocument::Error(XMLDocument *this)

{
  return *(int *)(this + 0x30) != 0;
}

// ---- tinyxml2::XMLDocument::ShallowClone  @ 0x5f49d0
/* tinyxml2::XMLDocument::ShallowClone(tinyxml2::XMLDocument*) const */

undefined4 tinyxml2::XMLDocument::ShallowClone(XMLDocument *param_1)

{
  return 0;
}

// ---- tinyxml2::XMLDocument::ShallowEqual  @ 0x5f49e0
/* tinyxml2::XMLDocument::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 tinyxml2::XMLDocument::ShallowEqual(XMLNode *param_1)

{
  return 0;
}

// ---- tinyxml2::XMLPrinter::~XMLPrinter  @ 0x5f49f0
/* WARNING: Removing unreachable block (ram,0x005f4a26) */
/* tinyxml2::XMLPrinter::~XMLPrinter() */

XMLPrinter * __thiscall tinyxml2::XMLPrinter::~XMLPrinter(XMLPrinter *this)

{
  *(undefined ***)this = &PTR__XMLPrinter_1_00936af8;
  DynArray<char,20>::~DynArray((DynArray<char,20> *)(this + 0xcc));
  DynArray<char_const*,10>::~DynArray((DynArray<char_const*,10> *)(this + 0x98));
  XMLVisitor::~XMLVisitor((XMLVisitor *)this);
  return this;
}

// ---- tinyxml2::XMLPrinter::~XMLPrinter  @ 0x5f4a40
/* tinyxml2::XMLPrinter::~XMLPrinter() */

XMLPrinter * __thiscall tinyxml2::XMLPrinter::~XMLPrinter(XMLPrinter *this)

{
  ~XMLPrinter(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLPrinter::VisitExit  @ 0x5f4a5c
/* tinyxml2::XMLPrinter::VisitExit(tinyxml2::XMLDocument const&) */

undefined4 tinyxml2::XMLPrinter::VisitExit(XMLDocument *param_1)

{
  return 1;
}

// ---- tinyxml2::StrPair::~StrPair  @ 0x5f4a6c
/* tinyxml2::StrPair::~StrPair() */

StrPair * __thiscall tinyxml2::StrPair::~StrPair(StrPair *this)

{
  Reset(this);
  return this;
}

// ---- tinyxml2::StrPair::Reset  @ 0x5f4a84
/* tinyxml2::StrPair::Reset() */

void __thiscall tinyxml2::StrPair::Reset(StrPair *this)

{
  if (((*(uint *)this & 0x200) != 0) && (*(int *)(this + 4) != 0)) {
    operator_delete__(*(void **)(this + 4));
  }
  *(undefined4 *)this = 0;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  return;
}

// ---- tinyxml2::StrPair::SetStr  @ 0x5f4ac0
/* tinyxml2::StrPair::SetStr(char const*, int) */

void __thiscall tinyxml2::StrPair::SetStr(StrPair *this,char *param_1,int param_2)

{
  size_t sVar1;
  void *pvVar2;
  
  Reset(this);
  sVar1 = strlen(param_1);
  pvVar2 = operator_new__(sVar1 + 1);
  *(void **)(this + 4) = pvVar2;
  memcpy(*(void **)(this + 4),param_1,sVar1 + 1);
  *(size_t *)(this + 8) = *(int *)(this + 4) + sVar1;
  *(uint *)this = param_2 | 0x200;
  return;
}

// ---- tinyxml2::StrPair::ParseText  @ 0x5f4b18
/* tinyxml2::StrPair::ParseText(char*, char const*, int) */

char * __thiscall
tinyxml2::StrPair::ParseText(StrPair *this,char *param_1,char *param_2,int param_3)

{
  char cVar1;
  size_t __n;
  int iVar2;
  char *local_20;
  
  cVar1 = *param_2;
  __n = strlen(param_2);
  local_20 = param_1;
  while( true ) {
    if (*local_20 == '\0') {
      return (char *)0x0;
    }
    if ((cVar1 == *local_20) && (iVar2 = strncmp(local_20,param_2,__n), iVar2 == 0)) break;
    local_20 = local_20 + 1;
  }
  Set(this,param_1,local_20,param_3);
  return local_20 + __n;
}

// ---- tinyxml2::StrPair::ParseName  @ 0x5f4b84
/* tinyxml2::StrPair::ParseName(char*) */

uchar * __thiscall tinyxml2::StrPair::ParseName(StrPair *this,char *param_1)

{
  bool bVar1;
  int iVar2;
  uchar *local_18;
  
  if ((param_1 == (char *)0x0) || (local_18 = (uchar *)param_1, *param_1 == '\0')) {
    local_18 = (uchar *)0x0;
  }
  else {
    while( true ) {
      if ((*local_18 == '\0') ||
         ((((iVar2 = XMLUtil::IsAlphaNum(*local_18), iVar2 == 0 && (*local_18 != '_')) &&
           (*local_18 != ':')) &&
          (((*local_18 != '-' || (local_18 <= param_1)) &&
           ((*local_18 != '.' || (local_18 <= param_1)))))))) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (!bVar1) break;
      local_18 = local_18 + 1;
    }
    if (param_1 < local_18) {
      Set(this,param_1,(char *)local_18,0);
    }
    else {
      local_18 = (uchar *)0x0;
    }
  }
  return local_18;
}

// ---- tinyxml2::StrPair::CollapseWhitespace  @ 0x5f4c20
/* tinyxml2::StrPair::CollapseWhitespace() */

void __thiscall tinyxml2::StrPair::CollapseWhitespace(StrPair *this)

{
  undefined4 uVar1;
  int iVar2;
  char *local_10;
  char *local_c;
  
  uVar1 = XMLUtil::SkipWhiteSpace(*(char **)(this + 4));
  *(undefined4 *)(this + 4) = uVar1;
  if ((*(int *)(this + 4) != 0) && (**(char **)(this + 4) != '\0')) {
    local_c = *(char **)(this + 4);
    for (local_10 = *(char **)(this + 4); *local_10 != '\0'; local_10 = local_10 + 1) {
      iVar2 = XMLUtil::IsWhiteSpace(*local_10);
      if (iVar2 != 0) {
        local_10 = (char *)XMLUtil::SkipWhiteSpace(local_10);
        if (*local_10 == '\0') break;
        *local_c = ' ';
        local_c = local_c + 1;
      }
      *local_c = *local_10;
      local_c = local_c + 1;
    }
    *local_c = '\0';
  }
  return;
}

// ---- tinyxml2::StrPair::GetStr  @ 0x5f4cb0
/* tinyxml2::StrPair::GetStr() */

void __thiscall tinyxml2::StrPair::GetStr(StrPair *this)

{
  int iVar1;
  int local_34;
  char *local_30;
  char *local_2c;
  int local_28;
  int local_24;
  char local_20 [12];
  int local_14;
  
  local_14 = __stack_chk_guard;
  if ((*(uint *)this & 0x100) != 0) {
    **(undefined1 **)(this + 8) = 0;
    *(uint *)this = *(uint *)this ^ 0x100;
    if (*(int *)this != 0) {
      local_30 = *(char **)(this + 4);
      local_2c = *(char **)(this + 4);
      while (local_30 < *(char **)(this + 8)) {
        if (((*(uint *)this & 2) == 0) || (*local_30 != '\r')) {
          if (((*(uint *)this & 2) == 0) || (*local_30 != '\n')) {
            if (((*(uint *)this & 1) == 0) || (*local_30 != '&')) {
              *local_2c = *local_30;
              local_30 = local_30 + 1;
              local_2c = local_2c + 1;
            }
            else if (local_30[1] == '#') {
              local_20[0] = '\0';
              local_20[1] = '\0';
              local_20[2] = '\0';
              local_20[3] = '\0';
              local_20[4] = '\0';
              local_20[5] = '\0';
              local_20[6] = '\0';
              local_20[7] = '\0';
              local_20[8] = '\0';
              local_20[9] = '\0';
              local_30 = (char *)XMLUtil::GetCharacterRef(local_30,local_20,&local_34);
              for (local_28 = 0; local_28 < local_34; local_28 = local_28 + 1) {
                *local_2c = local_20[local_28];
                local_2c = local_2c + 1;
              }
            }
            else {
              for (local_24 = 0; local_24 < 5; local_24 = local_24 + 1) {
                iVar1 = strncmp(local_30 + 1,*(char **)(&DAT_008fe5a8 + local_24 * 0xc),
                                *(size_t *)(&DAT_008fe5ac + local_24 * 0xc));
                if ((iVar1 == 0) && (local_30[*(int *)(&DAT_008fe5ac + local_24 * 0xc) + 1] == ';'))
                {
                  *local_2c = (&DAT_008fe5b0)[local_24 * 0xc];
                  local_2c = local_2c + 1;
                  local_30 = local_30 + *(int *)(&DAT_008fe5ac + local_24 * 0xc) + 2;
                  break;
                }
              }
              if (local_24 == 5) {
                local_30 = local_30 + 1;
                local_2c = local_2c + 1;
              }
            }
          }
          else {
            if (local_30[1] == '\r') {
              local_30 = local_30 + 2;
            }
            else {
              local_30 = local_30 + 1;
            }
            *local_2c = '\n';
            local_2c = local_2c + 1;
          }
        }
        else {
          if (local_30[1] == '\n') {
            local_30 = local_30 + 2;
          }
          else {
            local_30 = local_30 + 1;
          }
          *local_2c = '\n';
          local_2c = local_2c + 1;
        }
      }
      *local_2c = '\0';
    }
    if ((*(uint *)this & 4) != 0) {
      CollapseWhitespace(this);
    }
    *(uint *)this = *(uint *)this & 0x200;
  }
  if (local_14 == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(*(undefined4 *)(this + 4));
}

// ---- tinyxml2::XMLUtil::ReadBOM  @ 0x5f4f18
/* tinyxml2::XMLUtil::ReadBOM(char const*, bool*) */

char * tinyxml2::XMLUtil::ReadBOM(char *param_1,bool *param_2)

{
  char *local_c;
  
  *param_2 = false;
  local_c = param_1;
  if (((*param_1 == -0x11) && (param_1[1] == -0x45)) && (param_1[2] == -0x41)) {
    *param_2 = true;
    local_c = param_1 + 3;
  }
  return local_c;
}

// ---- tinyxml2::XMLUtil::ConvertUTF32ToUTF8  @ 0x5f4f58
/* tinyxml2::XMLUtil::ConvertUTF32ToUTF8(unsigned long, char*, int*) */

void tinyxml2::XMLUtil::ConvertUTF32ToUTF8(ulong param_1,char *param_2,int *param_3)

{
  byte *local_38;
  uint local_34;
  undefined4 local_24 [7];
  
  local_24[0] = 0;
  local_24[1] = 0;
  local_24[2] = 0xc0;
  local_24[3] = 0xe0;
  local_24[4] = 0xf0;
  local_24[5] = 0xf8;
  local_24[6] = 0xfc;
  if (param_1 < 0x80) {
    *param_3 = 1;
  }
  else if (param_1 < 0x800) {
    *param_3 = 2;
  }
  else if (param_1 < 0x10000) {
    *param_3 = 3;
  }
  else {
    if (0x1fffff < param_1) {
      *param_3 = 0;
      return;
    }
    *param_3 = 4;
  }
  local_38 = (byte *)(param_2 + *param_3);
  local_34 = param_1;
  switch(*param_3) {
  case 4:
    local_38 = local_38 + -1;
    *local_38 = (byte)param_1 & 0x3f | 0x80;
    local_34 = param_1 >> 6;
  case 3:
    local_38 = local_38 + -1;
    *local_38 = (byte)local_34 & 0x3f | 0x80;
    local_34 = local_34 >> 6;
  case 2:
    local_38 = local_38 + -1;
    *local_38 = (byte)local_34 & 0x3f | 0x80;
    local_34 = local_34 >> 6;
  case 1:
    local_38[-1] = (byte)local_34 | (byte)local_24[*param_3];
    return;
  default:
    return;
  }
}

// ---- tinyxml2::XMLUtil::GetCharacterRef  @ 0x5f5084
/* tinyxml2::XMLUtil::GetCharacterRef(char const*, char*, int*) */

char * tinyxml2::XMLUtil::GetCharacterRef(char *param_1,char *param_2,int *param_3)

{
  ulong local_1c;
  int local_18;
  int local_14;
  byte *local_10;
  byte *local_c;
  
  *param_3 = 0;
  if ((param_1[1] != '#') || (param_1[2] == '\0')) {
    return param_1 + 1;
  }
  local_1c = 0;
  local_14 = 1;
  if (param_1[2] == 'x') {
    if (param_1[3] == '\0') {
      return (char *)0x0;
    }
    local_10 = (byte *)strchr(param_1 + 3,0x3b);
    if ((local_10 == (byte *)0x0) || (*local_10 == 0)) {
      return (char *)0x0;
    }
    local_18 = (int)local_10 - (int)param_1;
    while (local_10 = local_10 + -1, *local_10 != 0x78) {
      if ((*local_10 < 0x30) || (0x39 < *local_10)) {
        if ((*local_10 < 0x61) || (0x66 < *local_10)) {
          if ((*local_10 < 0x41) || (0x46 < *local_10)) {
            return (char *)0x0;
          }
          local_1c = local_14 * (*local_10 - 0x37) + local_1c;
        }
        else {
          local_1c = local_14 * (*local_10 - 0x57) + local_1c;
        }
      }
      else {
        local_1c = local_14 * (*local_10 - 0x30) + local_1c;
      }
      local_14 = local_14 << 4;
    }
  }
  else {
    if (param_1[2] == '\0') {
      return (char *)0x0;
    }
    local_c = (byte *)strchr(param_1 + 2,0x3b);
    if ((local_c == (byte *)0x0) || (*local_c == 0)) {
      return (char *)0x0;
    }
    local_18 = (int)local_c - (int)param_1;
    while (local_c = local_c + -1, *local_c != 0x23) {
      if ((*local_c < 0x30) || (0x39 < *local_c)) {
        return (char *)0x0;
      }
      local_1c = local_14 * (*local_c - 0x30) + local_1c;
      local_14 = local_14 * 10;
    }
  }
  ConvertUTF32ToUTF8(local_1c,param_2,param_3);
  return param_1 + local_18 + 1;
}

// ---- tinyxml2::XMLUtil::ToStr  @ 0x5f522c
/* tinyxml2::XMLUtil::ToStr(int, char*, int) */

void tinyxml2::XMLUtil::ToStr(int param_1,char *param_2,int param_3)

{
  snprintf(param_2,param_3,"%d",param_1);
  return;
}

// ---- tinyxml2::XMLUtil::ToStr  @ 0x5f5254
/* tinyxml2::XMLUtil::ToStr(unsigned int, char*, int) */

void tinyxml2::XMLUtil::ToStr(uint param_1,char *param_2,int param_3)

{
  snprintf(param_2,param_3,"%u",param_1);
  return;
}

// ---- tinyxml2::XMLUtil::ToStr  @ 0x5f527c
/* tinyxml2::XMLUtil::ToStr(bool, char*, int) */

void tinyxml2::XMLUtil::ToStr(bool param_1,char *param_2,int param_3)

{
  snprintf(param_2,param_3,"%d",(uint)param_1);
  return;
}

// ---- tinyxml2::XMLUtil::ToStr  @ 0x5f52b0
/* tinyxml2::XMLUtil::ToStr(float, char*, int) */

void tinyxml2::XMLUtil::ToStr(float param_1,char *param_2,int param_3)

{
  size_t in_r2;
  
  snprintf((char *)param_3,in_r2,"%g",&DAT_008389d8,(double)(float)param_2);
  return;
}

// ---- tinyxml2::XMLUtil::ToStr  @ 0x5f52e0
/* tinyxml2::XMLUtil::ToStr(double, char*, int) */

void __thiscall tinyxml2::XMLUtil::ToStr(XMLUtil *this,double param_1,char *param_2,int param_3)

{
  size_t in_r3;
  
  snprintf((char *)param_3,in_r3,"%g",SUB84(param_1,0),&DAT_008389d8,this,param_2);
  return;
}

// ---- tinyxml2::XMLUtil::ToInt  @ 0x5f530c
/* tinyxml2::XMLUtil::ToInt(char const*, int*) */

bool tinyxml2::XMLUtil::ToInt(char *param_1,int *param_2)

{
  int iVar1;
  
  iVar1 = sscanf(param_1,"%d",param_2);
  return iVar1 == 1;
}

// ---- tinyxml2::XMLUtil::ToUnsigned  @ 0x5f5344
/* tinyxml2::XMLUtil::ToUnsigned(char const*, unsigned int*) */

bool tinyxml2::XMLUtil::ToUnsigned(char *param_1,uint *param_2)

{
  int iVar1;
  
  iVar1 = sscanf(param_1,"%u",param_2);
  return iVar1 == 1;
}

// ---- tinyxml2::XMLUtil::ToBool  @ 0x5f537c
/* tinyxml2::XMLUtil::ToBool(char const*, bool*) */

undefined4 tinyxml2::XMLUtil::ToBool(char *param_1,bool *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int local_c [2];
  
  local_c[0] = 0;
  iVar1 = ToInt(param_1,local_c);
  if (iVar1 == 0) {
    iVar1 = StringEqual(param_1,"true",0x7fffffff);
    if (iVar1 == 0) {
      iVar1 = StringEqual(param_1,"false",0x7fffffff);
      if (iVar1 == 0) {
        uVar2 = 0;
      }
      else {
        *param_2 = false;
        uVar2 = 1;
      }
    }
    else {
      *param_2 = true;
      uVar2 = 1;
    }
  }
  else {
    *param_2 = local_c[0] != 0;
    uVar2 = 1;
  }
  return uVar2;
}

// ---- tinyxml2::XMLUtil::ToFloat  @ 0x5f5400
/* tinyxml2::XMLUtil::ToFloat(char const*, float*) */

bool tinyxml2::XMLUtil::ToFloat(char *param_1,float *param_2)

{
  int iVar1;
  
  iVar1 = sscanf(param_1,"%f",param_2);
  return iVar1 == 1;
}

// ---- tinyxml2::XMLUtil::ToDouble  @ 0x5f5438
/* tinyxml2::XMLUtil::ToDouble(char const*, double*) */

bool tinyxml2::XMLUtil::ToDouble(char *param_1,double *param_2)

{
  int iVar1;
  
  iVar1 = sscanf(param_1,"%lf",param_2);
  return iVar1 == 1;
}

// ---- tinyxml2::XMLDocument::Identify  @ 0x5f5470
/* tinyxml2::XMLDocument::Identify(char*, tinyxml2::XMLNode**) */

char * __thiscall tinyxml2::XMLDocument::Identify(XMLDocument *this,char *param_1,XMLNode **param_2)

{
  int iVar1;
  void *pvVar2;
  char *local_28;
  XMLDeclaration *local_1c;
  
  local_28 = (char *)XMLUtil::SkipWhiteSpace(param_1);
  if ((local_28 != (char *)0x0) && (*local_28 != '\0')) {
    iVar1 = XMLUtil::StringEqual(local_28,DAT_00946988,2);
    if (iVar1 == 0) {
      iVar1 = XMLUtil::StringEqual(local_28,DAT_0094698c,4);
      if (iVar1 == 0) {
        iVar1 = XMLUtil::StringEqual(local_28,DAT_00946990,9);
        if (iVar1 == 0) {
          iVar1 = XMLUtil::StringEqual(local_28,DAT_00946994,2);
          if (iVar1 == 0) {
            iVar1 = XMLUtil::StringEqual(local_28,DAT_00946998,1);
            if (iVar1 == 0) {
              pvVar2 = (void *)MemPoolT<48>::Alloc((MemPoolT<48> *)(this + 0xdc));
              local_1c = operator_new(0x30,pvVar2);
              if (local_1c != (XMLDeclaration *)0x0) {
                XMLText::XMLText((XMLText *)local_1c,this);
              }
              *(XMLDocument **)(local_1c + 0x28) = this + 0xdc;
              local_28 = param_1;
            }
            else {
              pvVar2 = (void *)MemPoolT<52>::Alloc((MemPoolT<52> *)(this + 0x44));
              local_1c = operator_new(0x34,pvVar2);
              if (local_1c != (XMLDeclaration *)0x0) {
                XMLElement::XMLElement((XMLElement *)local_1c,this);
              }
              *(XMLDocument **)(local_1c + 0x28) = this + 0x44;
              local_28 = local_28 + 1;
            }
          }
          else {
            pvVar2 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
            local_1c = operator_new(0x2c,pvVar2);
            if (local_1c != (XMLDeclaration *)0x0) {
              XMLUnknown::XMLUnknown((XMLUnknown *)local_1c,this);
            }
            *(XMLDocument **)(local_1c + 0x28) = this + 0x128;
            local_28 = local_28 + 2;
          }
        }
        else {
          pvVar2 = (void *)MemPoolT<48>::Alloc((MemPoolT<48> *)(this + 0xdc));
          local_1c = operator_new(0x30,pvVar2);
          if (local_1c != (XMLDeclaration *)0x0) {
            XMLText::XMLText((XMLText *)local_1c,this);
          }
          *(XMLDocument **)(local_1c + 0x28) = this + 0xdc;
          local_28 = local_28 + 9;
          XMLText::SetCData((XMLText *)local_1c,true);
        }
      }
      else {
        pvVar2 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
        local_1c = operator_new(0x2c,pvVar2);
        if (local_1c != (XMLDeclaration *)0x0) {
          XMLComment::XMLComment((XMLComment *)local_1c,this);
        }
        *(XMLDocument **)(local_1c + 0x28) = this + 0x128;
        local_28 = local_28 + 4;
      }
    }
    else {
      pvVar2 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
      local_1c = operator_new(0x2c,pvVar2);
      if (local_1c != (XMLDeclaration *)0x0) {
        XMLDeclaration::XMLDeclaration(local_1c,this);
      }
      *(XMLDocument **)(local_1c + 0x28) = this + 0x128;
      local_28 = local_28 + 2;
    }
    *param_2 = (XMLNode *)local_1c;
  }
  return local_28;
}

// ---- tinyxml2::XMLDocument::Accept  @ 0x5f56f8
/* tinyxml2::XMLDocument::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLDocument::Accept(XMLDocument *this,XMLVisitor *param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  XMLNode *local_c;
  
  iVar2 = (**(code **)(*(int *)param_1 + 8))(param_1,this);
  if (iVar2 != 0) {
    local_c = (XMLNode *)XMLNode::FirstChild((XMLNode *)this);
    while ((local_c != (XMLNode *)0x0 &&
           (cVar1 = (**(code **)(*(int *)local_c + 0x38))(local_c,param_1), cVar1 == '\x01'))) {
      local_c = (XMLNode *)XMLNode::NextSibling(local_c);
    }
  }
  uVar3 = (**(code **)(*(int *)param_1 + 0xc))(param_1,this);
  return uVar3;
}

// ---- tinyxml2::XMLNode::XMLNode  @ 0x5f5768
/* tinyxml2::XMLNode::XMLNode(tinyxml2::XMLDocument*) */

XMLNode * __thiscall tinyxml2::XMLNode::XMLNode(XMLNode *this,XMLDocument *param_1)

{
  *(undefined ***)this = &PTR_ToElement_1_00936d08;
  *(XMLDocument **)(this + 4) = param_1;
  *(undefined4 *)(this + 8) = 0;
  StrPair::StrPair((StrPair *)(this + 0xc));
  *(undefined4 *)(this + 0x18) = 0;
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x20) = 0;
  *(undefined4 *)(this + 0x24) = 0;
  return this;
}

// ---- tinyxml2::XMLNode::~XMLNode  @ 0x5f57c0
/* WARNING: Removing unreachable block (ram,0x005f57fe) */
/* tinyxml2::XMLNode::~XMLNode() */

XMLNode * __thiscall tinyxml2::XMLNode::~XMLNode(XMLNode *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936d08;
  DeleteChildren(this);
  if (*(int *)(this + 8) != 0) {
    Unlink(*(XMLNode **)(this + 8),this);
  }
  StrPair::~StrPair((StrPair *)(this + 0xc));
  return this;
}

// ---- tinyxml2::XMLNode::~XMLNode  @ 0x5f5818
/* tinyxml2::XMLNode::~XMLNode() */

XMLNode * __thiscall tinyxml2::XMLNode::~XMLNode(XMLNode *this)

{
  ~XMLNode(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLNode::SetValue  @ 0x5f5834
/* tinyxml2::XMLNode::SetValue(char const*, bool) */

void __thiscall tinyxml2::XMLNode::SetValue(XMLNode *this,char *param_1,bool param_2)

{
  if (param_2) {
    StrPair::SetInternedStr((StrPair *)(this + 0xc),param_1);
  }
  else {
    StrPair::SetStr((StrPair *)(this + 0xc),param_1,0);
  }
  return;
}

// ---- tinyxml2::XMLNode::DeleteChildren  @ 0x5f586c
/* tinyxml2::XMLNode::DeleteChildren() */

void __thiscall tinyxml2::XMLNode::DeleteChildren(XMLNode *this)

{
  XMLNode *pXVar1;
  int *piVar2;
  
  while (*(int *)(this + 0x18) != 0) {
    pXVar1 = *(XMLNode **)(this + 0x18);
    Unlink(this,pXVar1);
    if (pXVar1 != (XMLNode *)0x0) {
      piVar2 = *(int **)(pXVar1 + 0x28);
      (**(code **)(*(int *)pXVar1 + 0x40))(pXVar1);
      (**(code **)(*piVar2 + 0x10))(piVar2,pXVar1);
    }
  }
  *(undefined4 *)(this + 0x1c) = 0;
  *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x1c);
  return;
}

// ---- tinyxml2::XMLNode::Unlink  @ 0x5f58c4
/* tinyxml2::XMLNode::Unlink(tinyxml2::XMLNode*) */

void __thiscall tinyxml2::XMLNode::Unlink(XMLNode *this,XMLNode *param_1)

{
  if (*(XMLNode **)(this + 0x18) == param_1) {
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(*(int *)(this + 0x18) + 0x24);
  }
  if (*(XMLNode **)(this + 0x1c) == param_1) {
    *(undefined4 *)(this + 0x1c) = *(undefined4 *)(*(int *)(this + 0x1c) + 0x20);
  }
  if (*(int *)(param_1 + 0x20) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x20) + 0x24) = *(undefined4 *)(param_1 + 0x24);
  }
  if (*(int *)(param_1 + 0x24) != 0) {
    *(undefined4 *)(*(int *)(param_1 + 0x24) + 0x20) = *(undefined4 *)(param_1 + 0x20);
  }
  *(undefined4 *)(param_1 + 8) = 0;
  return;
}

// ---- tinyxml2::XMLNode::DeleteChild  @ 0x5f5920
/* tinyxml2::XMLNode::DeleteChild(tinyxml2::XMLNode*) */

void __thiscall tinyxml2::XMLNode::DeleteChild(XMLNode *this,XMLNode *param_1)

{
  int *piVar1;
  
  if (param_1 != (XMLNode *)0x0) {
    piVar1 = *(int **)(param_1 + 0x28);
    (**(code **)(*(int *)param_1 + 0x40))(param_1);
    (**(code **)(*piVar1 + 0x10))(piVar1,param_1);
  }
  return;
}

// ---- tinyxml2::XMLNode::InsertEndChild  @ 0x5f5954
/* tinyxml2::XMLNode::InsertEndChild(tinyxml2::XMLNode*) */

XMLNode * __thiscall tinyxml2::XMLNode::InsertEndChild(XMLNode *this,XMLNode *param_1)

{
  if (*(int *)(this + 0x1c) == 0) {
    *(XMLNode **)(this + 0x1c) = param_1;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x1c);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  else {
    *(XMLNode **)(*(int *)(this + 0x1c) + 0x24) = param_1;
    *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(this + 0x1c);
    *(XMLNode **)(this + 0x1c) = param_1;
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  *(XMLNode **)(param_1 + 8) = this;
  (**(code **)(**(int **)(param_1 + 0x28) + 0x14))(*(undefined4 *)(param_1 + 0x28));
  return param_1;
}

// ---- tinyxml2::XMLNode::InsertFirstChild  @ 0x5f59c0
/* tinyxml2::XMLNode::InsertFirstChild(tinyxml2::XMLNode*) */

XMLNode * __thiscall tinyxml2::XMLNode::InsertFirstChild(XMLNode *this,XMLNode *param_1)

{
  if (*(int *)(this + 0x18) == 0) {
    *(XMLNode **)(this + 0x1c) = param_1;
    *(undefined4 *)(this + 0x18) = *(undefined4 *)(this + 0x1c);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x24) = 0;
  }
  else {
    *(XMLNode **)(*(int *)(this + 0x18) + 0x20) = param_1;
    *(undefined4 *)(param_1 + 0x24) = *(undefined4 *)(this + 0x18);
    *(XMLNode **)(this + 0x18) = param_1;
    *(undefined4 *)(param_1 + 0x20) = 0;
  }
  *(XMLNode **)(param_1 + 8) = this;
  (**(code **)(**(int **)(param_1 + 0x28) + 0x14))(*(undefined4 *)(param_1 + 0x28));
  return param_1;
}

// ---- tinyxml2::XMLNode::InsertAfterChild  @ 0x5f5a2c
/* tinyxml2::XMLNode::InsertAfterChild(tinyxml2::XMLNode*, tinyxml2::XMLNode*) */

XMLNode * __thiscall
tinyxml2::XMLNode::InsertAfterChild(XMLNode *this,XMLNode *param_1,XMLNode *param_2)

{
  if (*(XMLNode **)(param_1 + 8) == this) {
    if (*(int *)(param_1 + 0x24) == 0) {
      param_2 = (XMLNode *)InsertEndChild(this,param_2);
    }
    else {
      *(XMLNode **)(param_2 + 0x20) = param_1;
      *(undefined4 *)(param_2 + 0x24) = *(undefined4 *)(param_1 + 0x24);
      *(XMLNode **)(*(int *)(param_1 + 0x24) + 0x20) = param_2;
      *(XMLNode **)(param_1 + 0x24) = param_2;
      *(XMLNode **)(param_2 + 8) = this;
      (**(code **)(**(int **)(param_2 + 0x28) + 0x14))(*(undefined4 *)(param_2 + 0x28));
    }
  }
  else {
    param_2 = (XMLNode *)0x0;
  }
  return param_2;
}

// ---- tinyxml2::XMLNode::FirstChildElement  @ 0x5f5a98
/* tinyxml2::XMLNode::FirstChildElement(char const*) const */

XMLElement * __thiscall tinyxml2::XMLNode::FirstChildElement(XMLNode *this,char *param_1)

{
  bool bVar1;
  XMLElement *this_00;
  char *pcVar2;
  int iVar3;
  undefined4 *local_10;
  
  local_10 = *(undefined4 **)(this + 0x18);
  do {
    if (local_10 == (undefined4 *)0x0) {
      return (XMLElement *)0x0;
    }
    this_00 = (XMLElement *)(**(code **)*local_10)(local_10);
    if (this_00 != (XMLElement *)0x0) {
      if (param_1 == (char *)0x0) {
LAB_005f5adc:
        bVar1 = true;
      }
      else {
        pcVar2 = (char *)XMLElement::Name(this_00);
        iVar3 = XMLUtil::StringEqual(pcVar2,param_1,0x7fffffff);
        if (iVar3 != 0) goto LAB_005f5adc;
        bVar1 = false;
      }
      if (bVar1) {
        return this_00;
      }
    }
    local_10 = (undefined4 *)local_10[9];
  } while( true );
}

// ---- tinyxml2::XMLNode::LastChildElement  @ 0x5f5b00
/* tinyxml2::XMLNode::LastChildElement(char const*) const */

XMLElement * __thiscall tinyxml2::XMLNode::LastChildElement(XMLNode *this,char *param_1)

{
  bool bVar1;
  XMLElement *this_00;
  char *pcVar2;
  int iVar3;
  undefined4 *local_10;
  
  local_10 = *(undefined4 **)(this + 0x1c);
  do {
    if (local_10 == (undefined4 *)0x0) {
      return (XMLElement *)0x0;
    }
    this_00 = (XMLElement *)(**(code **)*local_10)(local_10);
    if (this_00 != (XMLElement *)0x0) {
      if (param_1 == (char *)0x0) {
LAB_005f5b44:
        bVar1 = true;
      }
      else {
        pcVar2 = (char *)XMLElement::Name(this_00);
        iVar3 = XMLUtil::StringEqual(pcVar2,param_1,0x7fffffff);
        if (iVar3 != 0) goto LAB_005f5b44;
        bVar1 = false;
      }
      if (bVar1) {
        return this_00;
      }
    }
    local_10 = (undefined4 *)local_10[8];
  } while( true );
}

// ---- tinyxml2::XMLNode::NextSiblingElement  @ 0x5f5b68
/* tinyxml2::XMLNode::NextSiblingElement(char const*) const */

undefined4 __thiscall tinyxml2::XMLNode::NextSiblingElement(XMLNode *this,char *param_1)

{
  bool bVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uVar4;
  XMLNode *local_c;
  
  local_c = *(XMLNode **)(this + 0x24);
  do {
    if (local_c == (XMLNode *)0x0) {
      return 0;
    }
    iVar2 = (*(code *)**(undefined4 **)local_c)(local_c);
    if (iVar2 == 0) {
LAB_005f5bac:
      bVar1 = false;
    }
    else {
      if (param_1 != (char *)0x0) {
        pcVar3 = (char *)Value(local_c);
        iVar2 = XMLUtil::StringEqual(param_1,pcVar3,0x7fffffff);
        if (iVar2 == 0) goto LAB_005f5bac;
      }
      bVar1 = true;
    }
    if (bVar1) {
      uVar4 = (*(code *)**(undefined4 **)local_c)(local_c);
      return uVar4;
    }
    local_c = *(XMLNode **)(local_c + 0x24);
  } while( true );
}

// ---- tinyxml2::XMLNode::PreviousSiblingElement  @ 0x5f5bd8
/* tinyxml2::XMLNode::PreviousSiblingElement(char const*) const */

undefined4 __thiscall tinyxml2::XMLNode::PreviousSiblingElement(XMLNode *this,char *param_1)

{
  bool bVar1;
  int iVar2;
  char *pcVar3;
  undefined4 uVar4;
  XMLNode *local_c;
  
  local_c = *(XMLNode **)(this + 0x20);
  do {
    if (local_c == (XMLNode *)0x0) {
      return 0;
    }
    iVar2 = (*(code *)**(undefined4 **)local_c)(local_c);
    if (iVar2 == 0) {
LAB_005f5c1c:
      bVar1 = false;
    }
    else {
      if (param_1 != (char *)0x0) {
        pcVar3 = (char *)Value(local_c);
        iVar2 = XMLUtil::StringEqual(param_1,pcVar3,0x7fffffff);
        if (iVar2 == 0) goto LAB_005f5c1c;
      }
      bVar1 = true;
    }
    if (bVar1) {
      uVar4 = (*(code *)**(undefined4 **)local_c)(local_c);
      return uVar4;
    }
    local_c = *(XMLNode **)(local_c + 0x20);
  } while( true );
}

// ---- tinyxml2::XMLNode::ParseDeep  @ 0x5f5c48
/* tinyxml2::XMLNode::ParseDeep(char*, tinyxml2::StrPair*) */

StrPair * tinyxml2::XMLNode::ParseDeep(char *param_1,StrPair *param_2)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  XMLElement *this;
  undefined4 uVar4;
  char *pcVar5;
  char *pcVar6;
  int *in_r2;
  int iVar7;
  StrPair *in_r3;
  XMLDocument *pXVar8;
  StrPair *local_38;
  XMLNode *local_30;
  int *local_2c;
  int *local_28;
  XMLElement *local_24;
  int *local_20;
  StrPair aSStack_1c [16];
  
  local_38 = param_2;
  do {
    if (local_38 == (StrPair *)0x0) {
      return (StrPair *)0x0;
    }
    if (*local_38 == (StrPair)0x0) {
      return (StrPair *)0x0;
    }
    local_30 = (XMLNode *)0x0;
    iVar3 = XMLDocument::Identify(*(XMLDocument **)(param_1 + 4),(char *)local_38,&local_30);
    if (iVar3 == 0) {
      return (StrPair *)0x0;
    }
    if (local_30 == (XMLNode *)0x0) {
      return (StrPair *)0x0;
    }
    StrPair::StrPair(aSStack_1c);
    local_38 = (StrPair *)(**(code **)(*(int *)local_30 + 0x3c))(local_30,iVar3,aSStack_1c);
    if (local_38 == (StrPair *)0x0) {
      if (local_30 != (XMLNode *)0x0) {
        local_2c = *(int **)(local_30 + 0x28);
        (**(code **)(*(int *)local_30 + 0x40))(local_30);
        (**(code **)(*local_2c + 0x10))(local_2c,local_30);
      }
      local_30 = (XMLNode *)0x0;
      cVar2 = XMLDocument::Error(*(XMLDocument **)(param_1 + 4));
      if (cVar2 != '\x01') {
        XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),0x11,0,0);
      }
      iVar3 = 0;
    }
    else {
      iVar3 = (*(code *)**(undefined4 **)local_30)(local_30);
      if (iVar3 == 0) {
LAB_005f5d2a:
        bVar1 = false;
      }
      else {
        this = (XMLElement *)(*(code *)**(undefined4 **)local_30)(local_30);
        iVar3 = XMLElement::ClosingType(this);
        if (iVar3 != 2) goto LAB_005f5d2a;
        bVar1 = true;
      }
      if (bVar1) {
        if (in_r2 != (int *)0x0) {
          iVar3 = *(int *)(local_30 + 0x10);
          iVar7 = *(int *)(local_30 + 0x14);
          *in_r2 = *(int *)(local_30 + 0xc);
          in_r2[1] = iVar3;
          in_r2[2] = iVar7;
        }
        (**(code **)(**(int **)(local_30 + 0x28) + 0x14))(*(int *)(local_30 + 0x28));
        if (local_30 != (XMLNode *)0x0) {
          local_28 = *(int **)(local_30 + 0x28);
          (**(code **)(*(int *)local_30 + 0x40))(local_30);
          (**(code **)(*local_28 + 0x10))(local_28,local_30);
        }
        iVar3 = 1;
        in_r3 = local_38;
      }
      else {
        local_24 = (XMLElement *)(*(code *)**(undefined4 **)local_30)(local_30);
        if (local_24 != (XMLElement *)0x0) {
          iVar3 = StrPair::Empty(aSStack_1c);
          if ((iVar3 == 0) || (iVar3 = XMLElement::ClosingType(local_24), iVar3 != 0)) {
            bVar1 = false;
          }
          else {
            bVar1 = true;
          }
          if (bVar1) {
            pXVar8 = *(XMLDocument **)(param_1 + 4);
            uVar4 = Value(local_30);
            XMLDocument::SetError(pXVar8,0x10,uVar4,0);
            local_38 = (StrPair *)0x0;
          }
          else {
            cVar2 = StrPair::Empty(aSStack_1c);
            if ((cVar2 == '\x01') || (iVar3 = XMLElement::ClosingType(local_24), iVar3 == 0)) {
              bVar1 = false;
            }
            else {
              bVar1 = true;
            }
            if (bVar1) {
              pXVar8 = *(XMLDocument **)(param_1 + 4);
              uVar4 = Value(local_30);
              XMLDocument::SetError(pXVar8,0x10,uVar4,0);
              local_38 = (StrPair *)0x0;
            }
            else {
              cVar2 = StrPair::Empty(aSStack_1c);
              if (cVar2 != '\x01') {
                pcVar5 = (char *)StrPair::GetStr(aSStack_1c);
                pcVar6 = (char *)Value(local_30);
                cVar2 = XMLUtil::StringEqual(pcVar5,pcVar6,0x7fffffff);
                if (cVar2 != '\x01') {
                  pXVar8 = *(XMLDocument **)(param_1 + 4);
                  uVar4 = Value(local_30);
                  XMLDocument::SetError(pXVar8,0x10,uVar4,0);
                  local_38 = (StrPair *)0x0;
                }
              }
            }
          }
        }
        if (local_38 == (StrPair *)0x0) {
          if (local_30 != (XMLNode *)0x0) {
            local_20 = *(int **)(local_30 + 0x28);
            (**(code **)(*(int *)local_30 + 0x40))(local_30);
            (**(code **)(*local_20 + 0x10))(local_20,local_30);
          }
          local_30 = (XMLNode *)0x0;
        }
        if (local_30 != (XMLNode *)0x0) {
          InsertEndChild((XMLNode *)param_1,local_30);
        }
        iVar3 = 2;
      }
    }
    StrPair::~StrPair(aSStack_1c);
    if (iVar3 == 0) {
      return (StrPair *)0x0;
    }
    if (iVar3 != 2) {
      return in_r3;
    }
  } while( true );
}

// ---- tinyxml2::XMLText::ParseDeep  @ 0x5f5f08
/* tinyxml2::XMLText::ParseDeep(char*, tinyxml2::StrPair*) */

char * tinyxml2::XMLText::ParseDeep(char *param_1,StrPair *param_2)

{
  int iVar1;
  char *pcVar2;
  uint local_10;
  
  iVar1 = CData((XMLText *)param_1);
  if (iVar1 == 0) {
    iVar1 = XMLDocument::ProcessEntities(*(XMLDocument **)(param_1 + 4));
    if (iVar1 == 0) {
      local_10 = 2;
    }
    else {
      local_10 = 3;
    }
    iVar1 = XMLDocument::WhitespaceMode(*(XMLDocument **)(param_1 + 4));
    if (iVar1 == 1) {
      local_10 = local_10 | 4;
    }
    pcVar2 = (char *)StrPair::ParseText((StrPair *)(param_1 + 0xc),(char *)param_2,"<",local_10);
    if (pcVar2 == (char *)0x0) {
      XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),10,param_2,0);
    }
    else if (*pcVar2 != '\0') {
      return pcVar2 + -1;
    }
    pcVar2 = (char *)0x0;
  }
  else {
    pcVar2 = (char *)StrPair::ParseText((StrPair *)(param_1 + 0xc),(char *)param_2,"]]>",2);
    if (pcVar2 == (char *)0x0) {
      XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),0xb,param_2,0);
    }
  }
  return pcVar2;
}

// ---- tinyxml2::XMLText::ShallowClone  @ 0x5f5fe4
/* tinyxml2::XMLText::ShallowClone(tinyxml2::XMLDocument*) const */

XMLText * __thiscall tinyxml2::XMLText::ShallowClone(XMLText *this,XMLDocument *param_1)

{
  bool bVar1;
  char *pcVar2;
  XMLText *this_00;
  XMLDocument *local_18;
  
  local_18 = param_1;
  if (param_1 == (XMLDocument *)0x0) {
    local_18 = *(XMLDocument **)(this + 4);
  }
  pcVar2 = (char *)XMLNode::Value((XMLNode *)this);
  this_00 = (XMLText *)XMLDocument::NewText(local_18,pcVar2);
  bVar1 = (bool)CData(this);
  SetCData(this_00,bVar1);
  return this_00;
}

// ---- tinyxml2::XMLText::ShallowEqual  @ 0x5f6028
/* tinyxml2::XMLText::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 __thiscall tinyxml2::XMLText::ShallowEqual(XMLText *this,XMLNode *param_1)

{
  int iVar1;
  XMLNode *this_00;
  char *pcVar2;
  char *pcVar3;
  
  iVar1 = (**(code **)(*(int *)param_1 + 0x1c))(param_1);
  if (iVar1 != 0) {
    this_00 = (XMLNode *)(**(code **)(*(int *)param_1 + 0x1c))(param_1);
    pcVar2 = (char *)XMLNode::Value(this_00);
    pcVar3 = (char *)XMLNode::Value((XMLNode *)this);
    iVar1 = XMLUtil::StringEqual(pcVar2,pcVar3,0x7fffffff);
    if (iVar1 != 0) {
      return 1;
    }
  }
  return 0;
}

// ---- tinyxml2::XMLText::Accept  @ 0x5f6080
/* tinyxml2::XMLText::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLText::Accept(XMLText *this,XMLVisitor *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_1 + 0x1c))(param_1,this);
  return uVar1;
}

// ---- tinyxml2::XMLComment::XMLComment  @ 0x5f60a0
/* tinyxml2::XMLComment::XMLComment(tinyxml2::XMLDocument*) */

XMLComment * __thiscall tinyxml2::XMLComment::XMLComment(XMLComment *this,XMLDocument *param_1)

{
  XMLNode::XMLNode((XMLNode *)this,param_1);
  *(undefined ***)this = &PTR_ToElement_1_00936c68;
  return this;
}

// ---- tinyxml2::XMLComment::~XMLComment  @ 0x5f60d0
/* WARNING: Removing unreachable block (ram,0x005f60f2) */
/* tinyxml2::XMLComment::~XMLComment() */

XMLComment * __thiscall tinyxml2::XMLComment::~XMLComment(XMLComment *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936c68;
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLComment::~XMLComment  @ 0x5f610c
/* tinyxml2::XMLComment::~XMLComment() */

XMLComment * __thiscall tinyxml2::XMLComment::~XMLComment(XMLComment *this)

{
  ~XMLComment(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLComment::ParseDeep  @ 0x5f6128
/* tinyxml2::XMLComment::ParseDeep(char*, tinyxml2::StrPair*) */

int tinyxml2::XMLComment::ParseDeep(char *param_1,StrPair *param_2)

{
  int iVar1;
  
  iVar1 = StrPair::ParseText((StrPair *)(param_1 + 0xc),(char *)param_2,"-->",2);
  if (iVar1 == 0) {
    XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),0xc,param_2,0);
  }
  return iVar1;
}

// ---- tinyxml2::XMLComment::ShallowClone  @ 0x5f6174
/* tinyxml2::XMLComment::ShallowClone(tinyxml2::XMLDocument*) const */

undefined4 __thiscall tinyxml2::XMLComment::ShallowClone(XMLComment *this,XMLDocument *param_1)

{
  char *pcVar1;
  undefined4 uVar2;
  XMLDocument *local_18;
  
  local_18 = param_1;
  if (param_1 == (XMLDocument *)0x0) {
    local_18 = *(XMLDocument **)(this + 4);
  }
  pcVar1 = (char *)XMLNode::Value((XMLNode *)this);
  uVar2 = XMLDocument::NewComment(local_18,pcVar1);
  return uVar2;
}

// ---- tinyxml2::XMLComment::ShallowEqual  @ 0x5f61a8
/* tinyxml2::XMLComment::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 __thiscall tinyxml2::XMLComment::ShallowEqual(XMLComment *this,XMLNode *param_1)

{
  int iVar1;
  XMLNode *this_00;
  char *pcVar2;
  char *pcVar3;
  
  iVar1 = (**(code **)(*(int *)param_1 + 0x20))(param_1);
  if (iVar1 != 0) {
    this_00 = (XMLNode *)(**(code **)(*(int *)param_1 + 0x20))(param_1);
    pcVar2 = (char *)XMLNode::Value(this_00);
    pcVar3 = (char *)XMLNode::Value((XMLNode *)this);
    iVar1 = XMLUtil::StringEqual(pcVar2,pcVar3,0x7fffffff);
    if (iVar1 != 0) {
      return 1;
    }
  }
  return 0;
}

// ---- tinyxml2::XMLComment::Accept  @ 0x5f6200
/* tinyxml2::XMLComment::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLComment::Accept(XMLComment *this,XMLVisitor *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_1 + 0x20))(param_1,this);
  return uVar1;
}

// ---- tinyxml2::XMLDeclaration::XMLDeclaration  @ 0x5f6220
/* tinyxml2::XMLDeclaration::XMLDeclaration(tinyxml2::XMLDocument*) */

XMLDeclaration * __thiscall
tinyxml2::XMLDeclaration::XMLDeclaration(XMLDeclaration *this,XMLDocument *param_1)

{
  XMLNode::XMLNode((XMLNode *)this,param_1);
  *(undefined ***)this = &PTR_ToElement_1_00936c18;
  return this;
}

// ---- tinyxml2::XMLDeclaration::~XMLDeclaration  @ 0x5f6250
/* WARNING: Removing unreachable block (ram,0x005f6272) */
/* tinyxml2::XMLDeclaration::~XMLDeclaration() */

XMLDeclaration * __thiscall tinyxml2::XMLDeclaration::~XMLDeclaration(XMLDeclaration *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936c18;
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLDeclaration::~XMLDeclaration  @ 0x5f628c
/* tinyxml2::XMLDeclaration::~XMLDeclaration() */

XMLDeclaration * __thiscall tinyxml2::XMLDeclaration::~XMLDeclaration(XMLDeclaration *this)

{
  ~XMLDeclaration(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLDeclaration::ParseDeep  @ 0x5f62a8
/* tinyxml2::XMLDeclaration::ParseDeep(char*, tinyxml2::StrPair*) */

int tinyxml2::XMLDeclaration::ParseDeep(char *param_1,StrPair *param_2)

{
  int iVar1;
  
  iVar1 = StrPair::ParseText((StrPair *)(param_1 + 0xc),(char *)param_2,"?>",2);
  if (iVar1 == 0) {
    XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),0xd,param_2,0);
  }
  return iVar1;
}

// ---- tinyxml2::XMLDeclaration::ShallowClone  @ 0x5f62f4
/* tinyxml2::XMLDeclaration::ShallowClone(tinyxml2::XMLDocument*) const */

undefined4 __thiscall
tinyxml2::XMLDeclaration::ShallowClone(XMLDeclaration *this,XMLDocument *param_1)

{
  char *pcVar1;
  undefined4 uVar2;
  XMLDocument *local_18;
  
  local_18 = param_1;
  if (param_1 == (XMLDocument *)0x0) {
    local_18 = *(XMLDocument **)(this + 4);
  }
  pcVar1 = (char *)XMLNode::Value((XMLNode *)this);
  uVar2 = XMLDocument::NewDeclaration(local_18,pcVar1);
  return uVar2;
}

// ---- tinyxml2::XMLDeclaration::ShallowEqual  @ 0x5f6328
/* tinyxml2::XMLDeclaration::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 __thiscall tinyxml2::XMLDeclaration::ShallowEqual(XMLDeclaration *this,XMLNode *param_1)

{
  int iVar1;
  XMLNode *this_00;
  char *pcVar2;
  char *pcVar3;
  
  iVar1 = (**(code **)(*(int *)param_1 + 0x28))(param_1);
  if (iVar1 != 0) {
    this_00 = (XMLNode *)(**(code **)(*(int *)param_1 + 0x28))(param_1);
    pcVar2 = (char *)XMLNode::Value(this_00);
    pcVar3 = (char *)XMLNode::Value((XMLNode *)this);
    iVar1 = XMLUtil::StringEqual(pcVar2,pcVar3,0x7fffffff);
    if (iVar1 != 0) {
      return 1;
    }
  }
  return 0;
}

// ---- tinyxml2::XMLDeclaration::Accept  @ 0x5f6380
/* tinyxml2::XMLDeclaration::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLDeclaration::Accept(XMLDeclaration *this,XMLVisitor *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_1 + 0x18))(param_1,this);
  return uVar1;
}

// ---- tinyxml2::XMLUnknown::XMLUnknown  @ 0x5f63a0
/* tinyxml2::XMLUnknown::XMLUnknown(tinyxml2::XMLDocument*) */

XMLUnknown * __thiscall tinyxml2::XMLUnknown::XMLUnknown(XMLUnknown *this,XMLDocument *param_1)

{
  XMLNode::XMLNode((XMLNode *)this,param_1);
  *(undefined ***)this = &PTR_ToElement_1_00936bc8;
  return this;
}

// ---- tinyxml2::XMLUnknown::~XMLUnknown  @ 0x5f63d0
/* WARNING: Removing unreachable block (ram,0x005f63f2) */
/* tinyxml2::XMLUnknown::~XMLUnknown() */

XMLUnknown * __thiscall tinyxml2::XMLUnknown::~XMLUnknown(XMLUnknown *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936bc8;
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLUnknown::~XMLUnknown  @ 0x5f640c
/* tinyxml2::XMLUnknown::~XMLUnknown() */

XMLUnknown * __thiscall tinyxml2::XMLUnknown::~XMLUnknown(XMLUnknown *this)

{
  ~XMLUnknown(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLUnknown::ParseDeep  @ 0x5f6428
/* tinyxml2::XMLUnknown::ParseDeep(char*, tinyxml2::StrPair*) */

int tinyxml2::XMLUnknown::ParseDeep(char *param_1,StrPair *param_2)

{
  int iVar1;
  
  iVar1 = StrPair::ParseText((StrPair *)(param_1 + 0xc),(char *)param_2,">",2);
  if (iVar1 == 0) {
    XMLDocument::SetError(*(XMLDocument **)(param_1 + 4),0xe,param_2,0);
  }
  return iVar1;
}

// ---- tinyxml2::XMLUnknown::ShallowClone  @ 0x5f6474
/* tinyxml2::XMLUnknown::ShallowClone(tinyxml2::XMLDocument*) const */

undefined4 __thiscall tinyxml2::XMLUnknown::ShallowClone(XMLUnknown *this,XMLDocument *param_1)

{
  char *pcVar1;
  undefined4 uVar2;
  XMLDocument *local_18;
  
  local_18 = param_1;
  if (param_1 == (XMLDocument *)0x0) {
    local_18 = *(XMLDocument **)(this + 4);
  }
  pcVar1 = (char *)XMLNode::Value((XMLNode *)this);
  uVar2 = XMLDocument::NewUnknown(local_18,pcVar1);
  return uVar2;
}

// ---- tinyxml2::XMLUnknown::ShallowEqual  @ 0x5f64a8
/* tinyxml2::XMLUnknown::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 __thiscall tinyxml2::XMLUnknown::ShallowEqual(XMLUnknown *this,XMLNode *param_1)

{
  int iVar1;
  XMLNode *this_00;
  char *pcVar2;
  char *pcVar3;
  
  iVar1 = (**(code **)(*(int *)param_1 + 0x2c))(param_1);
  if (iVar1 != 0) {
    this_00 = (XMLNode *)(**(code **)(*(int *)param_1 + 0x2c))(param_1);
    pcVar2 = (char *)XMLNode::Value(this_00);
    pcVar3 = (char *)XMLNode::Value((XMLNode *)this);
    iVar1 = XMLUtil::StringEqual(pcVar2,pcVar3,0x7fffffff);
    if (iVar1 != 0) {
      return 1;
    }
  }
  return 0;
}

// ---- tinyxml2::XMLUnknown::Accept  @ 0x5f6500
/* tinyxml2::XMLUnknown::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLUnknown::Accept(XMLUnknown *this,XMLVisitor *param_1)

{
  undefined4 uVar1;
  
  uVar1 = (**(code **)(*(int *)param_1 + 0x24))(param_1,this);
  return uVar1;
}

// ---- tinyxml2::XMLAttribute::ParseDeep  @ 0x5f6520
/* tinyxml2::XMLAttribute::ParseDeep(char*, bool) */

undefined4 __thiscall
tinyxml2::XMLAttribute::ParseDeep(XMLAttribute *this,char *param_1,bool param_2)

{
  char *pcVar1;
  byte *pbVar2;
  undefined4 uVar3;
  int iVar4;
  ushort local_c [4];
  
  pcVar1 = (char *)StrPair::ParseName((StrPair *)(this + 4),param_1);
  if ((pcVar1 == (char *)0x0) || (*pcVar1 == '\0')) {
    uVar3 = 0;
  }
  else {
    pcVar1 = (char *)XMLUtil::SkipWhiteSpace(pcVar1);
    if ((pcVar1 == (char *)0x0) || (*pcVar1 != '=')) {
      uVar3 = 0;
    }
    else {
      pbVar2 = (byte *)XMLUtil::SkipWhiteSpace(pcVar1 + 1);
      if ((*pbVar2 == 0x22) || (*pbVar2 == 0x27)) {
        local_c[0] = (ushort)*pbVar2;
        if (param_2) {
          iVar4 = 3;
        }
        else {
          iVar4 = 2;
        }
        uVar3 = StrPair::ParseText((StrPair *)(this + 0x10),(char *)(pbVar2 + 1),(char *)local_c,
                                   iVar4);
      }
      else {
        uVar3 = 0;
      }
    }
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::SetName  @ 0x5f65d0
/* tinyxml2::XMLAttribute::SetName(char const*) */

void __thiscall tinyxml2::XMLAttribute::SetName(XMLAttribute *this,char *param_1)

{
  StrPair::SetStr((StrPair *)(this + 4),param_1,0);
  return;
}

// ---- tinyxml2::XMLAttribute::QueryIntValue  @ 0x5f65ec
/* tinyxml2::XMLAttribute::QueryIntValue(int*) const */

undefined4 __thiscall tinyxml2::XMLAttribute::QueryIntValue(XMLAttribute *this,int *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  pcVar1 = (char *)Value(this);
  iVar2 = XMLUtil::ToInt(pcVar1,param_1);
  if (iVar2 == 0) {
    uVar3 = 2;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::QueryUnsignedValue  @ 0x5f6618
/* tinyxml2::XMLAttribute::QueryUnsignedValue(unsigned int*) const */

undefined4 __thiscall tinyxml2::XMLAttribute::QueryUnsignedValue(XMLAttribute *this,uint *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  pcVar1 = (char *)Value(this);
  iVar2 = XMLUtil::ToUnsigned(pcVar1,param_1);
  if (iVar2 == 0) {
    uVar3 = 2;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::QueryBoolValue  @ 0x5f6644
/* tinyxml2::XMLAttribute::QueryBoolValue(bool*) const */

undefined4 __thiscall tinyxml2::XMLAttribute::QueryBoolValue(XMLAttribute *this,bool *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  pcVar1 = (char *)Value(this);
  iVar2 = XMLUtil::ToBool(pcVar1,param_1);
  if (iVar2 == 0) {
    uVar3 = 2;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::QueryFloatValue  @ 0x5f6670
/* tinyxml2::XMLAttribute::QueryFloatValue(float*) const */

undefined4 __thiscall tinyxml2::XMLAttribute::QueryFloatValue(XMLAttribute *this,float *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  pcVar1 = (char *)Value(this);
  iVar2 = XMLUtil::ToFloat(pcVar1,param_1);
  if (iVar2 == 0) {
    uVar3 = 2;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::QueryDoubleValue  @ 0x5f669c
/* tinyxml2::XMLAttribute::QueryDoubleValue(double*) const */

undefined4 __thiscall tinyxml2::XMLAttribute::QueryDoubleValue(XMLAttribute *this,double *param_1)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  pcVar1 = (char *)Value(this);
  iVar2 = XMLUtil::ToDouble(pcVar1,param_1);
  if (iVar2 == 0) {
    uVar3 = 2;
  }
  else {
    uVar3 = 0;
  }
  return uVar3;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f66c8
/* tinyxml2::XMLAttribute::SetAttribute(char const*) */

void __thiscall tinyxml2::XMLAttribute::SetAttribute(XMLAttribute *this,char *param_1)

{
  StrPair::SetStr((StrPair *)(this + 0x10),param_1,0);
  return;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f66e4
/* tinyxml2::XMLAttribute::SetAttribute(int) */

void __thiscall tinyxml2::XMLAttribute::SetAttribute(XMLAttribute *this,int param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  StrPair::SetStr((StrPair *)(this + 0x10),acStack_d4,0);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f6734
/* tinyxml2::XMLAttribute::SetAttribute(unsigned int) */

void __thiscall tinyxml2::XMLAttribute::SetAttribute(XMLAttribute *this,uint param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  StrPair::SetStr((StrPair *)(this + 0x10),acStack_d4,0);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f6784
/* tinyxml2::XMLAttribute::SetAttribute(bool) */

void __thiscall tinyxml2::XMLAttribute::SetAttribute(XMLAttribute *this,bool param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  StrPair::SetStr((StrPair *)(this + 0x10),acStack_d4,0);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f67dc
/* tinyxml2::XMLAttribute::SetAttribute(double) */

void tinyxml2::XMLAttribute::SetAttribute(double param_1)

{
  int in_r0;
  XMLUtil *in_r2;
  char *in_r3;
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(in_r2,param_1,in_r3,(int)acStack_d4);
  StrPair::SetStr((StrPair *)(in_r0 + 0x10),acStack_d4,0);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLAttribute::SetAttribute  @ 0x5f6830
/* tinyxml2::XMLAttribute::SetAttribute(float) */

void tinyxml2::XMLAttribute::SetAttribute(float param_1)

{
  int in_r0;
  char *in_r1;
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,in_r1,(int)acStack_d4);
  StrPair::SetStr((StrPair *)(in_r0 + 0x10),acStack_d4,0);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLElement::XMLElement  @ 0x5f6880
/* tinyxml2::XMLElement::XMLElement(tinyxml2::XMLDocument*) */

XMLElement * __thiscall tinyxml2::XMLElement::XMLElement(XMLElement *this,XMLDocument *param_1)

{
  XMLNode::XMLNode((XMLNode *)this,param_1);
  *(undefined ***)this = &PTR_ToElement_1_00936b78;
  *(undefined4 *)(this + 0x2c) = 0;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::XMLElement::~XMLElement  @ 0x5f68bc
/* WARNING: Removing unreachable block (ram,0x005f6928) */
/* tinyxml2::XMLElement::~XMLElement() */

XMLElement * __thiscall tinyxml2::XMLElement::~XMLElement(XMLElement *this)

{
  undefined4 uVar1;
  int *piVar2;
  
  *(undefined ***)this = &PTR_ToElement_1_00936b78;
  while (*(int *)(this + 0x30) != 0) {
    uVar1 = *(undefined4 *)(*(int *)(this + 0x30) + 0x1c);
    if (*(int *)(this + 0x30) != 0) {
      piVar2 = *(int **)(*(int *)(this + 0x30) + 0x20);
      (**(code **)**(undefined4 **)(this + 0x30))(*(undefined4 *)(this + 0x30));
      (**(code **)(*piVar2 + 0x10))(piVar2,*(undefined4 *)(this + 0x30));
    }
    *(undefined4 *)(this + 0x30) = uVar1;
  }
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLElement::~XMLElement  @ 0x5f6940
/* tinyxml2::XMLElement::~XMLElement() */

XMLElement * __thiscall tinyxml2::XMLElement::~XMLElement(XMLElement *this)

{
  ~XMLElement(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLElement::FindAttribute  @ 0x5f695c
/* tinyxml2::XMLElement::FindAttribute(char const*) */

XMLAttribute * __thiscall tinyxml2::XMLElement::FindAttribute(XMLElement *this,char *param_1)

{
  char *pcVar1;
  int iVar2;
  XMLAttribute *local_c;
  
  local_c = *(XMLAttribute **)(this + 0x30);
  while( true ) {
    if (local_c == (XMLAttribute *)0x0) {
      return (XMLAttribute *)0x0;
    }
    pcVar1 = (char *)XMLAttribute::Name(local_c);
    iVar2 = XMLUtil::StringEqual(pcVar1,param_1,0x7fffffff);
    if (iVar2 != 0) break;
    local_c = *(XMLAttribute **)(local_c + 0x1c);
  }
  return local_c;
}

// ---- tinyxml2::XMLElement::FindAttribute  @ 0x5f69a4
/* tinyxml2::XMLElement::FindAttribute(char const*) const */

XMLAttribute * __thiscall tinyxml2::XMLElement::FindAttribute(XMLElement *this,char *param_1)

{
  char *pcVar1;
  int iVar2;
  XMLAttribute *local_c;
  
  local_c = *(XMLAttribute **)(this + 0x30);
  while( true ) {
    if (local_c == (XMLAttribute *)0x0) {
      return (XMLAttribute *)0x0;
    }
    pcVar1 = (char *)XMLAttribute::Name(local_c);
    iVar2 = XMLUtil::StringEqual(pcVar1,param_1,0x7fffffff);
    if (iVar2 != 0) break;
    local_c = *(XMLAttribute **)(local_c + 0x1c);
  }
  return local_c;
}

// ---- tinyxml2::XMLElement::Attribute  @ 0x5f69ec
/* tinyxml2::XMLElement::Attribute(char const*, char const*) const */

undefined4 __thiscall tinyxml2::XMLElement::Attribute(XMLElement *this,char *param_1,char *param_2)

{
  bool bVar1;
  XMLAttribute *this_00;
  char *pcVar2;
  int iVar3;
  undefined4 uVar4;
  
  this_00 = (XMLAttribute *)FindAttribute(this,param_1);
  if (this_00 == (XMLAttribute *)0x0) {
    return 0;
  }
  if (param_2 != (char *)0x0) {
    pcVar2 = (char *)XMLAttribute::Value(this_00);
    iVar3 = XMLUtil::StringEqual(pcVar2,param_2,0x7fffffff);
    if (iVar3 == 0) {
      bVar1 = false;
      goto LAB_005f6a32;
    }
  }
  bVar1 = true;
LAB_005f6a32:
  if (bVar1) {
    uVar4 = XMLAttribute::Value(this_00);
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- tinyxml2::XMLElement::GetText  @ 0x5f6a4c
/* tinyxml2::XMLElement::GetText() const */

undefined4 __thiscall tinyxml2::XMLElement::GetText(XMLElement *this)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  undefined4 uVar4;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6a80;
    }
  }
  bVar1 = false;
LAB_005f6a80:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    uVar4 = XMLNode::Value(this_00);
  }
  else {
    uVar4 = 0;
  }
  return uVar4;
}

// ---- tinyxml2::XMLElement::QueryIntText  @ 0x5f6ab0
/* tinyxml2::XMLElement::QueryIntText(int*) const */

undefined4 __thiscall tinyxml2::XMLElement::QueryIntText(XMLElement *this,int *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  char *pcVar4;
  undefined4 uVar5;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6ae6;
    }
  }
  bVar1 = false;
LAB_005f6ae6:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    pcVar4 = (char *)XMLNode::Value(this_00);
    iVar2 = XMLUtil::ToInt(pcVar4,param_1);
    if (iVar2 == 0) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0;
    }
  }
  else {
    uVar5 = 0x13;
  }
  return uVar5;
}

// ---- tinyxml2::XMLElement::QueryUnsignedText  @ 0x5f6b2c
/* tinyxml2::XMLElement::QueryUnsignedText(unsigned int*) const */

undefined4 __thiscall tinyxml2::XMLElement::QueryUnsignedText(XMLElement *this,uint *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  char *pcVar4;
  undefined4 uVar5;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6b62;
    }
  }
  bVar1 = false;
LAB_005f6b62:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    pcVar4 = (char *)XMLNode::Value(this_00);
    iVar2 = XMLUtil::ToUnsigned(pcVar4,param_1);
    if (iVar2 == 0) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0;
    }
  }
  else {
    uVar5 = 0x13;
  }
  return uVar5;
}

// ---- tinyxml2::XMLElement::QueryBoolText  @ 0x5f6ba8
/* tinyxml2::XMLElement::QueryBoolText(bool*) const */

undefined4 __thiscall tinyxml2::XMLElement::QueryBoolText(XMLElement *this,bool *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  char *pcVar4;
  undefined4 uVar5;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6bde;
    }
  }
  bVar1 = false;
LAB_005f6bde:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    pcVar4 = (char *)XMLNode::Value(this_00);
    iVar2 = XMLUtil::ToBool(pcVar4,param_1);
    if (iVar2 == 0) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0;
    }
  }
  else {
    uVar5 = 0x13;
  }
  return uVar5;
}

// ---- tinyxml2::XMLElement::QueryDoubleText  @ 0x5f6c24
/* tinyxml2::XMLElement::QueryDoubleText(double*) const */

undefined4 __thiscall tinyxml2::XMLElement::QueryDoubleText(XMLElement *this,double *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  char *pcVar4;
  undefined4 uVar5;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6c5a;
    }
  }
  bVar1 = false;
LAB_005f6c5a:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    pcVar4 = (char *)XMLNode::Value(this_00);
    iVar2 = XMLUtil::ToDouble(pcVar4,param_1);
    if (iVar2 == 0) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0;
    }
  }
  else {
    uVar5 = 0x13;
  }
  return uVar5;
}

// ---- tinyxml2::XMLElement::QueryFloatText  @ 0x5f6ca0
/* tinyxml2::XMLElement::QueryFloatText(float*) const */

undefined4 __thiscall tinyxml2::XMLElement::QueryFloatText(XMLElement *this,float *param_1)

{
  bool bVar1;
  int iVar2;
  int *piVar3;
  XMLNode *this_00;
  char *pcVar4;
  undefined4 uVar5;
  
  iVar2 = XMLNode::FirstChild((XMLNode *)this);
  if (iVar2 != 0) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    iVar2 = (**(code **)(*piVar3 + 0x1c))(piVar3);
    if (iVar2 != 0) {
      bVar1 = true;
      goto LAB_005f6cd6;
    }
  }
  bVar1 = false;
LAB_005f6cd6:
  if (bVar1) {
    piVar3 = (int *)XMLNode::FirstChild((XMLNode *)this);
    this_00 = (XMLNode *)(**(code **)(*piVar3 + 0x1c))(piVar3);
    pcVar4 = (char *)XMLNode::Value(this_00);
    iVar2 = XMLUtil::ToFloat(pcVar4,param_1);
    if (iVar2 == 0) {
      uVar5 = 0x12;
    }
    else {
      uVar5 = 0;
    }
  }
  else {
    uVar5 = 0x13;
  }
  return uVar5;
}

// ---- tinyxml2::XMLElement::FindOrCreateAttribute  @ 0x5f6d1c
/* tinyxml2::XMLElement::FindOrCreateAttribute(char const*) */

XMLAttribute * __thiscall
tinyxml2::XMLElement::FindOrCreateAttribute(XMLElement *this,char *param_1)

{
  char *pcVar1;
  int iVar2;
  void *pvVar3;
  XMLAttribute *local_10;
  XMLAttribute *local_c;
  
  local_10 = (XMLAttribute *)0x0;
  for (local_c = *(XMLAttribute **)(this + 0x30); local_c != (XMLAttribute *)0x0;
      local_c = *(XMLAttribute **)(local_c + 0x1c)) {
    pcVar1 = (char *)XMLAttribute::Name(local_c);
    iVar2 = XMLUtil::StringEqual(pcVar1,param_1,0x7fffffff);
    if (iVar2 != 0) break;
    local_10 = local_c;
  }
  if (local_c == (XMLAttribute *)0x0) {
    pvVar3 = (void *)MemPoolT<36>::Alloc((MemPoolT<36> *)(*(int *)(this + 4) + 0x90));
    local_c = operator_new(0x24,pvVar3);
    if (local_c != (XMLAttribute *)0x0) {
      XMLAttribute::XMLAttribute(local_c);
    }
    *(int *)(local_c + 0x20) = *(int *)(this + 4) + 0x90;
    if (local_10 == (XMLAttribute *)0x0) {
      *(XMLAttribute **)(this + 0x30) = local_c;
    }
    else {
      *(XMLAttribute **)(local_10 + 0x1c) = local_c;
    }
    XMLAttribute::SetName(local_c,param_1);
    (**(code **)(**(int **)(local_c + 0x20) + 0x14))(*(undefined4 *)(local_c + 0x20));
  }
  return local_c;
}

// ---- tinyxml2::XMLElement::DeleteAttribute  @ 0x5f6dd4
/* tinyxml2::XMLElement::DeleteAttribute(char const*) */

void __thiscall tinyxml2::XMLElement::DeleteAttribute(XMLElement *this,char *param_1)

{
  char *pcVar1;
  int iVar2;
  int *piVar3;
  XMLAttribute *local_14;
  XMLAttribute *local_10;
  
  local_14 = (XMLAttribute *)0x0;
  local_10 = *(XMLAttribute **)(this + 0x30);
  while( true ) {
    if (local_10 == (XMLAttribute *)0x0) {
      return;
    }
    pcVar1 = (char *)XMLAttribute::Name(local_10);
    iVar2 = XMLUtil::StringEqual(param_1,pcVar1,0x7fffffff);
    if (iVar2 != 0) break;
    local_14 = local_10;
    local_10 = *(XMLAttribute **)(local_10 + 0x1c);
  }
  if (local_14 == (XMLAttribute *)0x0) {
    *(undefined4 *)(this + 0x30) = *(undefined4 *)(local_10 + 0x1c);
  }
  else {
    *(undefined4 *)(local_14 + 0x1c) = *(undefined4 *)(local_10 + 0x1c);
  }
  if (local_10 == (XMLAttribute *)0x0) {
    return;
  }
  piVar3 = *(int **)(local_10 + 0x20);
  (*(code *)**(undefined4 **)local_10)(local_10);
  (**(code **)(*piVar3 + 0x10))(piVar3,local_10);
  return;
}

// ---- tinyxml2::XMLElement::ParseAttributes  @ 0x5f6e58
/* tinyxml2::XMLElement::ParseAttributes(char*) */

uchar * __thiscall tinyxml2::XMLElement::ParseAttributes(XMLElement *this,char *param_1)

{
  bool bVar1;
  uchar *puVar2;
  undefined4 uVar3;
  int iVar4;
  void *pvVar5;
  XMLAttribute *this_00;
  char *pcVar6;
  int *piVar7;
  XMLDocument *pXVar8;
  char *local_20;
  XMLAttribute *local_18;
  
  local_18 = (XMLAttribute *)0x0;
  local_20 = param_1;
  do {
    if (local_20 == (char *)0x0) {
      return (uchar *)0x0;
    }
    puVar2 = (uchar *)XMLUtil::SkipWhiteSpace(local_20);
    if ((puVar2 == (uchar *)0x0) || (*puVar2 == '\0')) {
      pXVar8 = *(XMLDocument **)(this + 4);
      uVar3 = Name(this);
      XMLDocument::SetError(pXVar8,7,param_1,uVar3);
      return (uchar *)0x0;
    }
    iVar4 = XMLUtil::IsAlpha(*puVar2);
    if (iVar4 == 0) {
      if ((*puVar2 == '/') && (puVar2[1] == '>')) {
        *(undefined4 *)(this + 0x2c) = 1;
        return puVar2 + 2;
      }
      if (*puVar2 == '>') {
        return puVar2 + 1;
      }
      XMLDocument::SetError(*(XMLDocument **)(this + 4),7,param_1,puVar2);
      return (uchar *)0x0;
    }
    pvVar5 = (void *)MemPoolT<36>::Alloc((MemPoolT<36> *)(*(int *)(this + 4) + 0x90));
    this_00 = operator_new(0x24,pvVar5);
    if (this_00 != (XMLAttribute *)0x0) {
      XMLAttribute::XMLAttribute(this_00);
    }
    *(int *)(this_00 + 0x20) = *(int *)(this + 4) + 0x90;
    (**(code **)(**(int **)(this_00 + 0x20) + 0x14))(*(undefined4 *)(this_00 + 0x20));
    bVar1 = (bool)XMLDocument::ProcessEntities(*(XMLDocument **)(this + 4));
    local_20 = (char *)XMLAttribute::ParseDeep(this_00,(char *)puVar2,bVar1);
    if (local_20 == (char *)0x0) {
LAB_005f6f36:
      bVar1 = true;
    }
    else {
      pcVar6 = (char *)XMLAttribute::Name(this_00);
      iVar4 = Attribute(this,pcVar6,(char *)0x0);
      if (iVar4 != 0) goto LAB_005f6f36;
      bVar1 = false;
    }
    if (bVar1) {
      if (this_00 != (XMLAttribute *)0x0) {
        piVar7 = *(int **)(this_00 + 0x20);
        (*(code *)**(undefined4 **)this_00)(this_00);
        (**(code **)(*piVar7 + 0x10))(piVar7,this_00);
      }
      XMLDocument::SetError(*(XMLDocument **)(this + 4),8,param_1,local_20);
      return (uchar *)0x0;
    }
    if (local_18 == (XMLAttribute *)0x0) {
      *(XMLAttribute **)(this + 0x30) = this_00;
      local_18 = this_00;
    }
    else {
      *(XMLAttribute **)(local_18 + 0x1c) = this_00;
      local_18 = this_00;
    }
  } while( true );
}

// ---- tinyxml2::XMLElement::ParseDeep  @ 0x5f6fe4
/* tinyxml2::XMLElement::ParseDeep(char*, tinyxml2::StrPair*) */

StrPair * tinyxml2::XMLElement::ParseDeep(char *param_1,StrPair *param_2)

{
  char *pcVar1;
  int iVar2;
  StrPair *pSVar3;
  char *local_10;
  
  local_10 = (char *)XMLUtil::SkipWhiteSpace((char *)param_2);
  if (local_10 == (char *)0x0) {
    pSVar3 = (StrPair *)0x0;
  }
  else {
    if (*local_10 == '/') {
      param_1[0x2c] = '\x02';
      param_1[0x2d] = '\0';
      param_1[0x2e] = '\0';
      param_1[0x2f] = '\0';
      local_10 = local_10 + 1;
    }
    pcVar1 = (char *)StrPair::ParseName((StrPair *)(param_1 + 0xc),local_10);
    iVar2 = StrPair::Empty((StrPair *)(param_1 + 0xc));
    if (iVar2 == 0) {
      pSVar3 = (StrPair *)ParseAttributes((XMLElement *)param_1,pcVar1);
      if (((pSVar3 != (StrPair *)0x0) && (*pSVar3 != (StrPair)0x0)) &&
         (*(int *)(param_1 + 0x2c) == 0)) {
        pSVar3 = (StrPair *)XMLNode::ParseDeep(param_1,pSVar3);
      }
    }
    else {
      pSVar3 = (StrPair *)0x0;
    }
  }
  return pSVar3;
}

// ---- tinyxml2::XMLElement::ShallowClone  @ 0x5f707c
/* tinyxml2::XMLElement::ShallowClone(tinyxml2::XMLDocument*) const */

XMLElement * __thiscall tinyxml2::XMLElement::ShallowClone(XMLElement *this,XMLDocument *param_1)

{
  char *pcVar1;
  XMLElement *this_00;
  char *pcVar2;
  XMLDocument *local_18;
  XMLAttribute *local_10;
  
  local_18 = param_1;
  if (param_1 == (XMLDocument *)0x0) {
    local_18 = *(XMLDocument **)(this + 4);
  }
  pcVar1 = (char *)XMLNode::Value((XMLNode *)this);
  this_00 = (XMLElement *)XMLDocument::NewElement(local_18,pcVar1);
  for (local_10 = (XMLAttribute *)FirstAttribute(this); local_10 != (XMLAttribute *)0x0;
      local_10 = (XMLAttribute *)XMLAttribute::Next(local_10)) {
    pcVar1 = (char *)XMLAttribute::Name(local_10);
    pcVar2 = (char *)XMLAttribute::Value(local_10);
    SetAttribute(this_00,pcVar1,pcVar2);
  }
  return this_00;
}

// ---- tinyxml2::XMLElement::ShallowEqual  @ 0x5f70e4
/* tinyxml2::XMLElement::ShallowEqual(tinyxml2::XMLNode const*) const */

undefined4 __thiscall tinyxml2::XMLElement::ShallowEqual(XMLElement *this,XMLNode *param_1)

{
  bool bVar1;
  char cVar2;
  XMLNode *this_00;
  char *pcVar3;
  char *pcVar4;
  int iVar5;
  undefined4 uVar6;
  XMLAttribute *local_14;
  XMLAttribute *local_10;
  
  this_00 = (XMLNode *)(**(code **)(*(int *)param_1 + 0x18))(param_1);
  if (this_00 != (XMLNode *)0x0) {
    pcVar3 = (char *)XMLNode::Value(this_00);
    pcVar4 = (char *)XMLNode::Value((XMLNode *)this);
    iVar5 = XMLUtil::StringEqual(pcVar3,pcVar4,0x7fffffff);
    if (iVar5 != 0) {
      bVar1 = true;
      goto LAB_005f712e;
    }
  }
  bVar1 = false;
LAB_005f712e:
  if (bVar1) {
    local_14 = (XMLAttribute *)FirstAttribute(this);
    for (local_10 = (XMLAttribute *)FirstAttribute((XMLElement *)this_00);
        (local_14 != (XMLAttribute *)0x0 && (local_10 != (XMLAttribute *)0x0));
        local_10 = (XMLAttribute *)XMLAttribute::Next(local_10)) {
      pcVar3 = (char *)XMLAttribute::Value(local_14);
      pcVar4 = (char *)XMLAttribute::Value(local_10);
      cVar2 = XMLUtil::StringEqual(pcVar3,pcVar4,0x7fffffff);
      if (cVar2 != '\x01') {
        return 0;
      }
      local_14 = (XMLAttribute *)XMLAttribute::Next(local_14);
    }
    if ((local_14 == (XMLAttribute *)0x0) && (local_10 == (XMLAttribute *)0x0)) {
      uVar6 = 1;
    }
    else {
      uVar6 = 0;
    }
  }
  else {
    uVar6 = 0;
  }
  return uVar6;
}

// ---- tinyxml2::XMLElement::Accept  @ 0x5f71b0
/* tinyxml2::XMLElement::Accept(tinyxml2::XMLVisitor*) const */

undefined4 __thiscall tinyxml2::XMLElement::Accept(XMLElement *this,XMLVisitor *param_1)

{
  char cVar1;
  int iVar2;
  undefined4 uVar3;
  XMLNode *local_c;
  
  iVar2 = (**(code **)(*(int *)param_1 + 0x10))(param_1,this,*(undefined4 *)(this + 0x30));
  if (iVar2 != 0) {
    local_c = (XMLNode *)XMLNode::FirstChild((XMLNode *)this);
    while ((local_c != (XMLNode *)0x0 &&
           (cVar1 = (**(code **)(*(int *)local_c + 0x38))(local_c,param_1), cVar1 == '\x01'))) {
      local_c = (XMLNode *)XMLNode::NextSibling(local_c);
    }
  }
  uVar3 = (**(code **)(*(int *)param_1 + 0x14))(param_1,this);
  return uVar3;
}

// ---- tinyxml2::XMLDocument::XMLDocument  @ 0x5f7224
/* tinyxml2::XMLDocument::XMLDocument(bool, tinyxml2::Whitespace) */

XMLDocument * __thiscall
tinyxml2::XMLDocument::XMLDocument(XMLDocument *this,XMLDocument param_1,undefined4 param_3)

{
  XMLNode::XMLNode((XMLNode *)this,(XMLDocument *)0x0);
  *(undefined ***)this = &PTR_ToElement_1_00936b28;
  this[0x2c] = (XMLDocument)0x0;
  this[0x2d] = param_1;
  *(undefined4 *)(this + 0x30) = 0;
  *(undefined4 *)(this + 0x34) = param_3;
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  MemPoolT<52>::MemPoolT((MemPoolT<52> *)(this + 0x44));
  MemPoolT<36>::MemPoolT((MemPoolT<36> *)(this + 0x90));
  MemPoolT<48>::MemPoolT((MemPoolT<48> *)(this + 0xdc));
  MemPoolT<44>::MemPoolT((MemPoolT<44> *)(this + 0x128));
  *(XMLDocument **)(this + 4) = this;
  return this;
}

// ---- tinyxml2::XMLDocument::~XMLDocument  @ 0x5f72ec
/* WARNING: Removing unreachable block (ram,0x005f7352) */
/* tinyxml2::XMLDocument::~XMLDocument() */

XMLDocument * __thiscall tinyxml2::XMLDocument::~XMLDocument(XMLDocument *this)

{
  *(undefined ***)this = &PTR_ToElement_1_00936b28;
  XMLNode::DeleteChildren((XMLNode *)this);
  if (*(int *)(this + 0x40) != 0) {
    operator_delete__(*(void **)(this + 0x40));
  }
  MemPoolT<44>::~MemPoolT((MemPoolT<44> *)(this + 0x128));
  MemPoolT<48>::~MemPoolT((MemPoolT<48> *)(this + 0xdc));
  MemPoolT<36>::~MemPoolT((MemPoolT<36> *)(this + 0x90));
  MemPoolT<52>::~MemPoolT((MemPoolT<52> *)(this + 0x44));
  XMLNode::~XMLNode((XMLNode *)this);
  return this;
}

// ---- tinyxml2::XMLDocument::~XMLDocument  @ 0x5f736c
/* tinyxml2::XMLDocument::~XMLDocument() */

XMLDocument * __thiscall tinyxml2::XMLDocument::~XMLDocument(XMLDocument *this)

{
  ~XMLDocument(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::XMLDocument::InitDocument  @ 0x5f7388
/* tinyxml2::XMLDocument::InitDocument() */

void __thiscall tinyxml2::XMLDocument::InitDocument(XMLDocument *this)

{
  *(undefined4 *)(this + 0x30) = 0;
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  if (*(int *)(this + 0x40) != 0) {
    operator_delete__(*(void **)(this + 0x40));
  }
  *(undefined4 *)(this + 0x40) = 0;
  return;
}

// ---- tinyxml2::XMLDocument::NewElement  @ 0x5f73c0
/* tinyxml2::XMLDocument::NewElement(char const*) */

XMLElement * __thiscall tinyxml2::XMLDocument::NewElement(XMLDocument *this,char *param_1)

{
  void *pvVar1;
  XMLElement *this_00;
  
  pvVar1 = (void *)MemPoolT<52>::Alloc((MemPoolT<52> *)(this + 0x44));
  this_00 = operator_new(0x34,pvVar1);
  if (this_00 != (XMLElement *)0x0) {
    XMLElement::XMLElement(this_00,this);
  }
  *(XMLDocument **)(this_00 + 0x28) = this + 0x44;
  XMLElement::SetName(this_00,param_1,false);
  return this_00;
}

// ---- tinyxml2::XMLDocument::NewComment  @ 0x5f741c
/* tinyxml2::XMLDocument::NewComment(char const*) */

XMLComment * __thiscall tinyxml2::XMLDocument::NewComment(XMLDocument *this,char *param_1)

{
  void *pvVar1;
  XMLComment *this_00;
  
  pvVar1 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
  this_00 = operator_new(0x2c,pvVar1);
  if (this_00 != (XMLComment *)0x0) {
    XMLComment::XMLComment(this_00,this);
  }
  *(XMLDocument **)(this_00 + 0x28) = this + 0x128;
  XMLNode::SetValue((XMLNode *)this_00,param_1,false);
  return this_00;
}

// ---- tinyxml2::XMLDocument::NewText  @ 0x5f747c
/* tinyxml2::XMLDocument::NewText(char const*) */

XMLText * __thiscall tinyxml2::XMLDocument::NewText(XMLDocument *this,char *param_1)

{
  void *pvVar1;
  XMLText *this_00;
  
  pvVar1 = (void *)MemPoolT<48>::Alloc((MemPoolT<48> *)(this + 0xdc));
  this_00 = operator_new(0x30,pvVar1);
  if (this_00 != (XMLText *)0x0) {
    XMLText::XMLText(this_00,this);
  }
  *(XMLDocument **)(this_00 + 0x28) = this + 0xdc;
  XMLNode::SetValue((XMLNode *)this_00,param_1,false);
  return this_00;
}

// ---- tinyxml2::XMLDocument::NewDeclaration  @ 0x5f74dc
/* tinyxml2::XMLDocument::NewDeclaration(char const*) */

XMLDeclaration * __thiscall tinyxml2::XMLDocument::NewDeclaration(XMLDocument *this,char *param_1)

{
  void *pvVar1;
  XMLDeclaration *this_00;
  
  pvVar1 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
  this_00 = operator_new(0x2c,pvVar1);
  if (this_00 != (XMLDeclaration *)0x0) {
    XMLDeclaration::XMLDeclaration(this_00,this);
  }
  *(XMLDocument **)(this_00 + 0x28) = this + 0x128;
  if (param_1 == (char *)0x0) {
    param_1 = "xml version=\"1.0\" encoding=\"UTF-8\"";
  }
  XMLNode::SetValue((XMLNode *)this_00,param_1,false);
  return this_00;
}

// ---- tinyxml2::XMLDocument::NewUnknown  @ 0x5f7550
/* tinyxml2::XMLDocument::NewUnknown(char const*) */

XMLUnknown * __thiscall tinyxml2::XMLDocument::NewUnknown(XMLDocument *this,char *param_1)

{
  void *pvVar1;
  XMLUnknown *this_00;
  
  pvVar1 = (void *)MemPoolT<44>::Alloc((MemPoolT<44> *)(this + 0x128));
  this_00 = operator_new(0x2c,pvVar1);
  if (this_00 != (XMLUnknown *)0x0) {
    XMLUnknown::XMLUnknown(this_00,this);
  }
  *(XMLDocument **)(this_00 + 0x28) = this + 0x128;
  XMLNode::SetValue((XMLNode *)this_00,param_1,false);
  return this_00;
}

// ---- tinyxml2::XMLDocument::LoadFile  @ 0x5f75b0
/* tinyxml2::XMLDocument::LoadFile(char const*) */

undefined4 __thiscall tinyxml2::XMLDocument::LoadFile(XMLDocument *this,char *param_1)

{
  FILE *__stream;
  undefined4 uVar1;
  
  XMLNode::DeleteChildren((XMLNode *)this);
  InitDocument(this);
  __stream = fopen(param_1,"rb");
  if (__stream == (FILE *)0x0) {
    SetError(this,3,param_1,0);
    uVar1 = *(undefined4 *)(this + 0x30);
  }
  else {
    LoadFile(this,(__sFILE *)__stream);
    fclose(__stream);
    uVar1 = *(undefined4 *)(this + 0x30);
  }
  return uVar1;
}

// ---- tinyxml2::XMLDocument::LoadFile  @ 0x5f7610
/* tinyxml2::XMLDocument::LoadFile(__sFILE*) */

undefined4 __thiscall tinyxml2::XMLDocument::LoadFile(XMLDocument *this,__sFILE *param_1)

{
  size_t __n;
  void *pvVar1;
  size_t sVar2;
  char *pcVar3;
  undefined4 uVar4;
  
  XMLNode::DeleteChildren((XMLNode *)this);
  InitDocument(this);
  fseek((FILE *)param_1,0,2);
  __n = ftell((FILE *)param_1);
  fseek((FILE *)param_1,0,0);
  if (__n == 0) {
    uVar4 = *(undefined4 *)(this + 0x30);
  }
  else {
    pvVar1 = operator_new__(__n + 1);
    *(void **)(this + 0x40) = pvVar1;
    sVar2 = fread(*(void **)(this + 0x40),1,__n,(FILE *)param_1);
    if (sVar2 == __n) {
      *(undefined1 *)(__n + *(int *)(this + 0x40)) = 0;
      pcVar3 = (char *)XMLUtil::SkipWhiteSpace(*(char **)(this + 0x40));
      pcVar3 = (char *)XMLUtil::ReadBOM(pcVar3,(bool *)(this + 0x2c));
      if ((pcVar3 == (char *)0x0) || (*pcVar3 == '\0')) {
        SetError(this,0xf,0,0);
        uVar4 = *(undefined4 *)(this + 0x30);
      }
      else {
        (**(code **)(*(int *)this + 0x3c))
                  (this,pcVar3 + (*(int *)(this + 0x40) - *(int *)(this + 0x40)),0);
        uVar4 = *(undefined4 *)(this + 0x30);
      }
    }
    else {
      SetError(this,5,0,0);
      uVar4 = *(undefined4 *)(this + 0x30);
    }
  }
  return uVar4;
}

// ---- tinyxml2::XMLDocument::SaveFile  @ 0x5f7704
/* tinyxml2::XMLDocument::SaveFile(char const*, bool) */

undefined4 __thiscall tinyxml2::XMLDocument::SaveFile(XMLDocument *this,char *param_1,bool param_2)

{
  FILE *__stream;
  undefined4 uVar1;
  
  __stream = fopen(param_1,"w");
  if (__stream == (FILE *)0x0) {
    SetError(this,4,param_1,0);
    uVar1 = *(undefined4 *)(this + 0x30);
  }
  else {
    SaveFile(this,(__sFILE *)__stream,param_2);
    fclose(__stream);
    uVar1 = *(undefined4 *)(this + 0x30);
  }
  return uVar1;
}

// ---- tinyxml2::XMLDocument::SaveFile  @ 0x5f7764
/* tinyxml2::XMLDocument::SaveFile(__sFILE*, bool) */

void __thiscall tinyxml2::XMLDocument::SaveFile(XMLDocument *this,__sFILE *param_1,bool param_2)

{
  undefined4 uVar1;
  XMLPrinter aXStack_100 [236];
  int local_14;
  
  local_14 = __stack_chk_guard;
  XMLPrinter::XMLPrinter(aXStack_100,param_1,param_2);
  Print(this,aXStack_100);
  uVar1 = *(undefined4 *)(this + 0x30);
  XMLPrinter::~XMLPrinter(aXStack_100);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

// ---- tinyxml2::XMLDocument::Parse  @ 0x5f77d4
/* tinyxml2::XMLDocument::Parse(char const*, unsigned int) */

undefined4 __thiscall tinyxml2::XMLDocument::Parse(XMLDocument *this,char *param_1,uint param_2)

{
  void *pvVar1;
  char *pcVar2;
  undefined4 uVar3;
  size_t local_14;
  
  XMLNode::DeleteChildren((XMLNode *)this);
  InitDocument(this);
  if ((param_1 == (char *)0x0) || (*param_1 == '\0')) {
    SetError(this,0xf,0,0);
    uVar3 = *(undefined4 *)(this + 0x30);
  }
  else {
    local_14 = param_2;
    if (param_2 == 0xffffffff) {
      local_14 = strlen(param_1);
    }
    pvVar1 = operator_new__(local_14 + 1);
    *(void **)(this + 0x40) = pvVar1;
    memcpy(*(void **)(this + 0x40),param_1,local_14);
    *(undefined1 *)(local_14 + *(int *)(this + 0x40)) = 0;
    pcVar2 = (char *)XMLUtil::SkipWhiteSpace(param_1);
    pcVar2 = (char *)XMLUtil::ReadBOM(pcVar2,(bool *)(this + 0x2c));
    if ((pcVar2 == (char *)0x0) || (*pcVar2 == '\0')) {
      SetError(this,0xf,0,0);
      uVar3 = *(undefined4 *)(this + 0x30);
    }
    else {
      (**(code **)(*(int *)this + 0x3c))(this,*(undefined4 *)(this + 0x40),0);
      uVar3 = *(undefined4 *)(this + 0x30);
    }
  }
  return uVar3;
}

// ---- tinyxml2::XMLDocument::Print  @ 0x5f78a4
/* tinyxml2::XMLDocument::Print(tinyxml2::XMLPrinter*) */

void __thiscall tinyxml2::XMLDocument::Print(XMLDocument *this,XMLPrinter *param_1)

{
  XMLPrinter *local_100;
  XMLPrinter aXStack_f8 [236];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLPrinter::XMLPrinter(aXStack_f8,(__sFILE *)recvfrom,false);
  local_100 = param_1;
  if (param_1 == (XMLPrinter *)0x0) {
    local_100 = aXStack_f8;
  }
  (**(code **)(*(int *)this + 0x38))(this,local_100);
  XMLPrinter::~XMLPrinter(aXStack_f8);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLDocument::SetError  @ 0x5f7918
/* tinyxml2::XMLDocument::SetError(tinyxml2::XMLError, char const*, char const*) */

void __thiscall
tinyxml2::XMLDocument::SetError
          (XMLDocument *this,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  *(undefined4 *)(this + 0x30) = param_2;
  *(undefined4 *)(this + 0x38) = param_3;
  *(undefined4 *)(this + 0x3c) = param_4;
  return;
}

// ---- tinyxml2::XMLDocument::PrintError  @ 0x5f7938
/* tinyxml2::XMLDocument::PrintError() const */

void __thiscall tinyxml2::XMLDocument::PrintError(XMLDocument *this)

{
  char local_34 [20];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  int local_c;
  
  local_c = __stack_chk_guard;
  if (*(int *)(this + 0x30) != 0) {
    local_34[0] = '\0';
    local_34[1] = '\0';
    local_34[2] = '\0';
    local_34[3] = '\0';
    local_34[4] = '\0';
    local_34[5] = '\0';
    local_34[6] = '\0';
    local_34[7] = '\0';
    local_34[8] = '\0';
    local_34[9] = '\0';
    local_34[10] = '\0';
    local_34[0xb] = '\0';
    local_34[0xc] = '\0';
    local_34[0xd] = '\0';
    local_34[0xe] = '\0';
    local_34[0xf] = '\0';
    local_34[0x10] = '\0';
    local_34[0x11] = '\0';
    local_34[0x12] = '\0';
    local_34[0x13] = '\0';
    local_20 = 0;
    local_1c = 0;
    local_18 = 0;
    local_14 = 0;
    local_10 = 0;
    if (*(int *)(this + 0x38) != 0) {
      snprintf(local_34,0x14,"%s",*(undefined4 *)(this + 0x38));
    }
    if (*(int *)(this + 0x3c) != 0) {
      snprintf((char *)&local_20,0x14,"%s",*(undefined4 *)(this + 0x3c));
    }
    printf("XMLDocument error id=%d str1=%s str2=%s\n",*(undefined4 *)(this + 0x30),local_34,
           &local_20);
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::XMLPrinter  @ 0x5f7a00
/* tinyxml2::XMLPrinter::XMLPrinter(__sFILE*, bool) */

XMLPrinter * __thiscall
tinyxml2::XMLPrinter::XMLPrinter(XMLPrinter *this,__sFILE *param_1,bool param_2)

{
  int local_10;
  int local_c;
  
  XMLVisitor::XMLVisitor((XMLVisitor *)this);
  *(undefined ***)this = &PTR__XMLPrinter_1_00936af8;
  this[4] = (XMLPrinter)0x0;
  this[5] = (XMLPrinter)0x1;
  *(__sFILE **)(this + 8) = param_1;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0xffffffff;
  this[0x14] = (XMLPrinter)0x1;
  this[0x15] = (XMLPrinter)param_2;
  DynArray<char_const*,10>::DynArray((DynArray<char_const*,10> *)(this + 0x98));
  DynArray<char,20>::DynArray((DynArray<char,20> *)(this + 0xcc));
  for (local_10 = 0; local_10 < 0x40; local_10 = local_10 + 1) {
    this[local_10 + 0x16] = (XMLPrinter)0x0;
    this[local_10 + 0x56] = (XMLPrinter)0x0;
  }
  for (local_c = 0; local_c < 5; local_c = local_c + 1) {
    if ((byte)(&DAT_008fe5b0)[local_c * 0xc] < 0x40) {
      this[(byte)(&DAT_008fe5b0)[local_c * 0xc] + 0x16] = (XMLPrinter)0x1;
    }
  }
  this[0x7c] = (XMLPrinter)0x1;
  this[0x92] = (XMLPrinter)0x1;
  this[0x94] = (XMLPrinter)0x1;
  DynArray<char,20>::Push((DynArray<char,20> *)(this + 0xcc),'\0');
  return this;
}

// ---- tinyxml2::XMLPrinter::Print  @ 0x5f7b3c
/* tinyxml2::XMLPrinter::Print(char const*, ...) */

void tinyxml2::XMLPrinter::Print(char *param_1,...)

{
  int iVar1;
  int iVar2;
  char *in_r1;
  undefined4 in_r2;
  undefined4 in_r3;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  uStack_8 = in_r2;
  uStack_4 = in_r3;
  if (*(int *)(param_1 + 8) == 0) {
    iVar1 = vsnprintf((char *)0x0,0,in_r1,&uStack_8);
    iVar2 = DynArray<char,20>::PushArr((DynArray<char,20> *)(param_1 + 0xcc),iVar1);
    vsnprintf((char *)(iVar2 + -1),iVar1 + 1,in_r1,&uStack_8);
  }
  else {
    vfprintf(*(FILE **)(param_1 + 8),in_r1,&uStack_8);
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PrintSpace  @ 0x5f7ba0
/* tinyxml2::XMLPrinter::PrintSpace(int) */

void __thiscall tinyxml2::XMLPrinter::PrintSpace(XMLPrinter *this,int param_1)

{
  int local_c;
  
  for (local_c = 0; local_c < param_1; local_c = local_c + 1) {
    Print((char *)this,&DAT_00838a64);
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PrintString  @ 0x5f7bd4
/* tinyxml2::XMLPrinter::PrintString(char const*, bool) */

void __thiscall tinyxml2::XMLPrinter::PrintString(XMLPrinter *this,char *param_1,bool param_2)

{
  XMLPrinter *pXVar1;
  byte *local_20;
  byte *local_14;
  int local_10;
  
  if (param_2) {
    pXVar1 = this + 0x56;
  }
  else {
    pXVar1 = this + 0x16;
  }
  local_20 = (byte *)param_1;
  local_14 = (byte *)param_1;
  if (this[0x14] != (XMLPrinter)0x0) {
    for (; *local_14 != 0; local_14 = local_14 + 1) {
      if (((*local_14 != 0) && (*local_14 < 0x40)) && (pXVar1[*local_14] != (XMLPrinter)0x0)) {
        for (; local_20 < local_14; local_20 = local_20 + 1) {
          Print((char *)this,&DAT_00838a6c,(uint)*local_20);
        }
        for (local_10 = 0; local_10 < 5; local_10 = local_10 + 1) {
          if ((&DAT_008fe5b0)[local_10 * 0xc] == *local_14) {
            Print((char *)this,&DAT_00838a70,*(undefined4 *)(&DAT_008fe5a8 + local_10 * 0xc));
            break;
          }
        }
        local_20 = local_20 + 1;
      }
    }
  }
  if ((this[0x14] != (XMLPrinter)0x1) || (0 < (int)local_14 - (int)local_20)) {
    Print((char *)this,&DAT_00838a34,local_20);
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushHeader  @ 0x5f7cec
/* tinyxml2::XMLPrinter::PushHeader(bool, bool) */

void __thiscall tinyxml2::XMLPrinter::PushHeader(XMLPrinter *this,bool param_1,bool param_2)

{
  if (param_1) {
    Print((char *)this,&DAT_00838a34,&DAT_00838bf4);
  }
  if (param_2) {
    PushDeclaration(this,"xml version=\"1.0\"");
  }
  return;
}

// ---- tinyxml2::XMLPrinter::OpenElement  @ 0x5f7d40
/* tinyxml2::XMLPrinter::OpenElement(char const*) */

void __thiscall tinyxml2::XMLPrinter::OpenElement(XMLPrinter *this,char *param_1)

{
  if (this[4] != (XMLPrinter)0x0) {
    SealElement(this);
  }
  DynArray<char_const*,10>::Push((DynArray<char_const*,10> *)(this + 0x98),param_1);
  if (((*(int *)(this + 0x10) < 0) && (this[5] != (XMLPrinter)0x1)) &&
     (this[0x15] != (XMLPrinter)0x1)) {
    Print((char *)this,&DAT_00838a8c);
    PrintSpace(this,*(int *)(this + 0xc));
  }
  Print((char *)this,&DAT_00838a90,param_1);
  this[4] = (XMLPrinter)0x1;
  this[5] = (XMLPrinter)0x0;
  *(int *)(this + 0xc) = *(int *)(this + 0xc) + 1;
  return;
}

// ---- tinyxml2::XMLPrinter::PushAttribute  @ 0x5f7dd0
/* tinyxml2::XMLPrinter::PushAttribute(char const*, char const*) */

void __thiscall tinyxml2::XMLPrinter::PushAttribute(XMLPrinter *this,char *param_1,char *param_2)

{
  Print((char *)this," %s=\"",param_1);
  PrintString(this,param_2,false);
  Print((char *)this,&DAT_00838a9c);
  return;
}

// ---- tinyxml2::XMLPrinter::PushAttribute  @ 0x5f7e0c
/* tinyxml2::XMLPrinter::PushAttribute(char const*, int) */

void __thiscall tinyxml2::XMLPrinter::PushAttribute(XMLPrinter *this,char *param_1,int param_2)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_2,acStack_d4,200);
  PushAttribute(this,param_1,acStack_d4);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushAttribute  @ 0x5f7e58
/* tinyxml2::XMLPrinter::PushAttribute(char const*, unsigned int) */

void __thiscall tinyxml2::XMLPrinter::PushAttribute(XMLPrinter *this,char *param_1,uint param_2)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_2,acStack_d4,200);
  PushAttribute(this,param_1,acStack_d4);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushAttribute  @ 0x5f7ea4
/* tinyxml2::XMLPrinter::PushAttribute(char const*, bool) */

void __thiscall tinyxml2::XMLPrinter::PushAttribute(XMLPrinter *this,char *param_1,bool param_2)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_2,acStack_d4,200);
  PushAttribute(this,param_1,acStack_d4);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushAttribute  @ 0x5f7ef8
/* tinyxml2::XMLPrinter::PushAttribute(char const*, double) */

void tinyxml2::XMLPrinter::PushAttribute(char *param_1,double param_2)

{
  char *in_r1;
  XMLUtil *in_r2;
  char *in_r3;
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(in_r2,param_2,in_r3,(int)acStack_d4);
  PushAttribute((XMLPrinter *)param_1,in_r1,acStack_d4);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::CloseElement  @ 0x5f7f48
/* tinyxml2::XMLPrinter::CloseElement() */

void __thiscall tinyxml2::XMLPrinter::CloseElement(XMLPrinter *this)

{
  undefined4 uVar1;
  
  *(int *)(this + 0xc) = *(int *)(this + 0xc) + -1;
  uVar1 = DynArray<char_const*,10>::Pop((DynArray<char_const*,10> *)(this + 0x98));
  if (this[4] == (XMLPrinter)0x0) {
    if ((*(int *)(this + 0x10) < 0) && (this[0x15] != (XMLPrinter)0x1)) {
      Print((char *)this,&DAT_00838a8c);
      PrintSpace(this,*(int *)(this + 0xc));
    }
    Print((char *)this,"</%s>",uVar1);
  }
  else {
    Print((char *)this,&DAT_00838aa0);
  }
  if (*(int *)(this + 0x10) == *(int *)(this + 0xc)) {
    *(undefined4 *)(this + 0x10) = 0xffffffff;
  }
  if ((*(int *)(this + 0xc) == 0) && (this[0x15] != (XMLPrinter)0x1)) {
    Print((char *)this,&DAT_00838a8c);
  }
  this[4] = (XMLPrinter)0x0;
  return;
}

// ---- tinyxml2::XMLPrinter::SealElement  @ 0x5f800c
/* tinyxml2::XMLPrinter::SealElement() */

void __thiscall tinyxml2::XMLPrinter::SealElement(XMLPrinter *this)

{
  this[4] = (XMLPrinter)0x0;
  Print((char *)this,&DAT_00838a04);
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f8030
/* tinyxml2::XMLPrinter::PushText(char const*, bool) */

void __thiscall tinyxml2::XMLPrinter::PushText(XMLPrinter *this,char *param_1,bool param_2)

{
  *(int *)(this + 0x10) = *(int *)(this + 0xc) + -1;
  if (this[4] != (XMLPrinter)0x0) {
    SealElement(this);
  }
  if (param_2) {
    Print((char *)this,"<![CDATA[");
    Print((char *)this,&DAT_00838a34,param_1);
    Print((char *)this,&DAT_008389f4);
  }
  else {
    PrintString(this,param_1,true);
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f80a4
/* tinyxml2::XMLPrinter::PushText(int) */

void __thiscall tinyxml2::XMLPrinter::PushText(XMLPrinter *this,int param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  PushText(this,acStack_d4,false);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f80ec
/* tinyxml2::XMLPrinter::PushText(unsigned int) */

void __thiscall tinyxml2::XMLPrinter::PushText(XMLPrinter *this,uint param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  PushText(this,acStack_d4,false);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f8134
/* tinyxml2::XMLPrinter::PushText(bool) */

void __thiscall tinyxml2::XMLPrinter::PushText(XMLPrinter *this,bool param_1)

{
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,acStack_d4,200);
  PushText(this,acStack_d4,false);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f8184
/* tinyxml2::XMLPrinter::PushText(float) */

void tinyxml2::XMLPrinter::PushText(float param_1)

{
  XMLPrinter *in_r0;
  char *in_r1;
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(param_1,in_r1,(int)acStack_d4);
  PushText(in_r0,acStack_d4,false);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushText  @ 0x5f81cc
/* tinyxml2::XMLPrinter::PushText(double) */

void tinyxml2::XMLPrinter::PushText(double param_1)

{
  XMLPrinter *in_r0;
  XMLUtil *in_r2;
  char *in_r3;
  char acStack_d4 [200];
  int local_c;
  
  local_c = __stack_chk_guard;
  XMLUtil::ToStr(in_r2,param_1,in_r3,(int)acStack_d4);
  PushText(in_r0,acStack_d4,false);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- tinyxml2::XMLPrinter::PushComment  @ 0x5f8218
/* tinyxml2::XMLPrinter::PushComment(char const*) */

void __thiscall tinyxml2::XMLPrinter::PushComment(XMLPrinter *this,char *param_1)

{
  if (this[4] != (XMLPrinter)0x0) {
    SealElement(this);
  }
  if (((*(int *)(this + 0x10) < 0) && (this[5] != (XMLPrinter)0x1)) &&
     (this[0x15] != (XMLPrinter)0x1)) {
    Print((char *)this,&DAT_00838a8c);
    PrintSpace(this,*(int *)(this + 0xc));
  }
  this[5] = (XMLPrinter)0x0;
  Print((char *)this,"<!--%s-->",param_1);
  return;
}

// ---- tinyxml2::XMLPrinter::PushDeclaration  @ 0x5f828c
/* tinyxml2::XMLPrinter::PushDeclaration(char const*) */

void __thiscall tinyxml2::XMLPrinter::PushDeclaration(XMLPrinter *this,char *param_1)

{
  if (this[4] != (XMLPrinter)0x0) {
    SealElement(this);
  }
  if (((*(int *)(this + 0x10) < 0) && (this[5] != (XMLPrinter)0x1)) &&
     (this[0x15] != (XMLPrinter)0x1)) {
    Print((char *)this,&DAT_00838a8c);
    PrintSpace(this,*(int *)(this + 0xc));
  }
  this[5] = (XMLPrinter)0x0;
  Print((char *)this,"<?%s?>",param_1);
  return;
}

// ---- tinyxml2::XMLPrinter::PushUnknown  @ 0x5f8300
/* tinyxml2::XMLPrinter::PushUnknown(char const*) */

void __thiscall tinyxml2::XMLPrinter::PushUnknown(XMLPrinter *this,char *param_1)

{
  if (this[4] != (XMLPrinter)0x0) {
    SealElement(this);
  }
  if (((*(int *)(this + 0x10) < 0) && (this[5] != (XMLPrinter)0x1)) &&
     (this[0x15] != (XMLPrinter)0x1)) {
    Print((char *)this,&DAT_00838a8c);
    PrintSpace(this,*(int *)(this + 0xc));
  }
  this[5] = (XMLPrinter)0x0;
  Print((char *)this,"<!%s>",param_1);
  return;
}

// ---- tinyxml2::XMLPrinter::VisitEnter  @ 0x5f8374
/* tinyxml2::XMLPrinter::VisitEnter(tinyxml2::XMLDocument const&) */

undefined4 __thiscall tinyxml2::XMLPrinter::VisitEnter(XMLPrinter *this,XMLDocument *param_1)

{
  XMLPrinter XVar1;
  int iVar2;
  
  XVar1 = (XMLPrinter)XMLDocument::ProcessEntities(param_1);
  this[0x14] = XVar1;
  iVar2 = XMLDocument::HasBOM(param_1);
  if (iVar2 != 0) {
    PushHeader(this,true,false);
  }
  return 1;
}

// ---- tinyxml2::XMLPrinter::VisitEnter  @ 0x5f83ac
/* tinyxml2::XMLPrinter::VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*) */

undefined4 __thiscall
tinyxml2::XMLPrinter::VisitEnter(XMLPrinter *this,XMLElement *param_1,XMLAttribute *param_2)

{
  char *pcVar1;
  char *pcVar2;
  undefined4 local_14;
  
  pcVar1 = (char *)XMLElement::Name(param_1);
  OpenElement(this,pcVar1);
  for (local_14 = param_2; local_14 != (XMLAttribute *)0x0;
      local_14 = (XMLAttribute *)XMLAttribute::Next(local_14)) {
    pcVar1 = (char *)XMLAttribute::Name(local_14);
    pcVar2 = (char *)XMLAttribute::Value(local_14);
    PushAttribute(this,pcVar1,pcVar2);
  }
  return 1;
}

// ---- tinyxml2::XMLPrinter::VisitExit  @ 0x5f83fc
/* tinyxml2::XMLPrinter::VisitExit(tinyxml2::XMLElement const&) */

undefined4 tinyxml2::XMLPrinter::VisitExit(XMLElement *param_1)

{
  CloseElement((XMLPrinter *)param_1);
  return 1;
}

// ---- tinyxml2::XMLPrinter::Visit  @ 0x5f8414
/* tinyxml2::XMLPrinter::Visit(tinyxml2::XMLText const&) */

undefined4 __thiscall tinyxml2::XMLPrinter::Visit(XMLPrinter *this,XMLText *param_1)

{
  bool bVar1;
  char *pcVar2;
  
  pcVar2 = (char *)XMLNode::Value((XMLNode *)param_1);
  bVar1 = (bool)XMLText::CData(param_1);
  PushText(this,pcVar2,bVar1);
  return 1;
}

// ---- tinyxml2::XMLPrinter::Visit  @ 0x5f8440
/* tinyxml2::XMLPrinter::Visit(tinyxml2::XMLComment const&) */

undefined4 __thiscall tinyxml2::XMLPrinter::Visit(XMLPrinter *this,XMLComment *param_1)

{
  char *pcVar1;
  
  pcVar1 = (char *)XMLNode::Value((XMLNode *)param_1);
  PushComment(this,pcVar1);
  return 1;
}

// ---- tinyxml2::XMLPrinter::Visit  @ 0x5f8464
/* tinyxml2::XMLPrinter::Visit(tinyxml2::XMLDeclaration const&) */

undefined4 __thiscall tinyxml2::XMLPrinter::Visit(XMLPrinter *this,XMLDeclaration *param_1)

{
  char *pcVar1;
  
  pcVar1 = (char *)XMLNode::Value((XMLNode *)param_1);
  PushDeclaration(this,pcVar1);
  return 1;
}

// ---- tinyxml2::XMLPrinter::Visit  @ 0x5f8488
/* tinyxml2::XMLPrinter::Visit(tinyxml2::XMLUnknown const&) */

undefined4 __thiscall tinyxml2::XMLPrinter::Visit(XMLPrinter *this,XMLUnknown *param_1)

{
  char *pcVar1;
  
  pcVar1 = (char *)XMLNode::Value((XMLNode *)param_1);
  PushUnknown(this,pcVar1);
  return 1;
}

// ---- tinyxml2::DynArray<char_const*,10>::~DynArray  @ 0x5f84ac
/* tinyxml2::DynArray<char const*, 10>::~DynArray() */

DynArray<char_const*,10> * __thiscall
tinyxml2::DynArray<char_const*,10>::~DynArray(DynArray<char_const*,10> *this)

{
  if ((*(DynArray<char_const*,10> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::DynArray<char,20>::~DynArray  @ 0x5f84dc
/* tinyxml2::DynArray<char, 20>::~DynArray() */

DynArray<char,20> * __thiscall tinyxml2::DynArray<char,20>::~DynArray(DynArray<char,20> *this)

{
  if ((*(DynArray<char,20> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::MemPoolT<44>::Alloc  @ 0x5f850c
/* tinyxml2::MemPoolT<44>::Alloc() */

undefined4 __thiscall tinyxml2::MemPoolT<44>::Alloc(MemPoolT<44> *this)

{
  Block *__s;
  undefined4 uVar1;
  int local_14;
  
  if (*(int *)(this + 0x38) == 0) {
    __s = operator_new(0x3f4);
    memset(__s,0,0x3f4);
    DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Push
              ((DynArray<tinyxml2::MemPoolT<44>::Block*,10> *)(this + 4),__s);
    for (local_14 = 0; local_14 < 0x16; local_14 = local_14 + 1) {
      *(Block **)(__s + local_14 * 0x2c) = __s + (local_14 + 1) * 0x2c;
    }
    *(undefined4 *)(__s + 0x3c8) = 0;
    *(Block **)(this + 0x38) = __s;
  }
  uVar1 = *(undefined4 *)(this + 0x38);
  *(undefined4 *)(this + 0x38) = **(undefined4 **)(this + 0x38);
  *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + 1;
  if (*(int *)(this + 0x44) < *(int *)(this + 0x3c)) {
    *(undefined4 *)(this + 0x44) = *(undefined4 *)(this + 0x3c);
  }
  *(int *)(this + 0x40) = *(int *)(this + 0x40) + 1;
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + 1;
  return uVar1;
}

// ---- tinyxml2::MemPoolT<48>::Alloc  @ 0x5f85cc
/* tinyxml2::MemPoolT<48>::Alloc() */

undefined4 __thiscall tinyxml2::MemPoolT<48>::Alloc(MemPoolT<48> *this)

{
  Block *__s;
  undefined4 uVar1;
  int local_14;
  
  if (*(int *)(this + 0x38) == 0) {
    __s = operator_new(0x3f0);
    memset(__s,0,0x3f0);
    DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Push
              ((DynArray<tinyxml2::MemPoolT<48>::Block*,10> *)(this + 4),__s);
    for (local_14 = 0; local_14 < 0x14; local_14 = local_14 + 1) {
      *(Block **)(__s + local_14 * 0x30) = __s + (local_14 + 1) * 0x30;
    }
    *(undefined4 *)(__s + 0x3c0) = 0;
    *(Block **)(this + 0x38) = __s;
  }
  uVar1 = *(undefined4 *)(this + 0x38);
  *(undefined4 *)(this + 0x38) = **(undefined4 **)(this + 0x38);
  *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + 1;
  if (*(int *)(this + 0x44) < *(int *)(this + 0x3c)) {
    *(undefined4 *)(this + 0x44) = *(undefined4 *)(this + 0x3c);
  }
  *(int *)(this + 0x40) = *(int *)(this + 0x40) + 1;
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + 1;
  return uVar1;
}

// ---- tinyxml2::MemPoolT<52>::Alloc  @ 0x5f8690
/* tinyxml2::MemPoolT<52>::Alloc() */

undefined4 __thiscall tinyxml2::MemPoolT<52>::Alloc(MemPoolT<52> *this)

{
  Block *__s;
  undefined4 uVar1;
  int local_14;
  
  if (*(int *)(this + 0x38) == 0) {
    __s = operator_new(0x3dc);
    memset(__s,0,0x3dc);
    DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Push
              ((DynArray<tinyxml2::MemPoolT<52>::Block*,10> *)(this + 4),__s);
    for (local_14 = 0; local_14 < 0x12; local_14 = local_14 + 1) {
      *(Block **)(__s + local_14 * 0x34) = __s + (local_14 + 1) * 0x34;
    }
    *(undefined4 *)(__s + 0x3a8) = 0;
    *(Block **)(this + 0x38) = __s;
  }
  uVar1 = *(undefined4 *)(this + 0x38);
  *(undefined4 *)(this + 0x38) = **(undefined4 **)(this + 0x38);
  *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + 1;
  if (*(int *)(this + 0x44) < *(int *)(this + 0x3c)) {
    *(undefined4 *)(this + 0x44) = *(undefined4 *)(this + 0x3c);
  }
  *(int *)(this + 0x40) = *(int *)(this + 0x40) + 1;
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + 1;
  return uVar1;
}

// ---- tinyxml2::MemPoolT<36>::Alloc  @ 0x5f8750
/* tinyxml2::MemPoolT<36>::Alloc() */

undefined4 __thiscall tinyxml2::MemPoolT<36>::Alloc(MemPoolT<36> *this)

{
  Block *__s;
  undefined4 uVar1;
  int local_14;
  
  if (*(int *)(this + 0x38) == 0) {
    __s = operator_new(0x3f0);
    memset(__s,0,0x3f0);
    DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Push
              ((DynArray<tinyxml2::MemPoolT<36>::Block*,10> *)(this + 4),__s);
    for (local_14 = 0; local_14 < 0x1b; local_14 = local_14 + 1) {
      *(Block **)(__s + local_14 * 0x24) = __s + (local_14 + 1) * 0x24;
    }
    *(undefined4 *)(__s + 0x3cc) = 0;
    *(Block **)(this + 0x38) = __s;
  }
  uVar1 = *(undefined4 *)(this + 0x38);
  *(undefined4 *)(this + 0x38) = **(undefined4 **)(this + 0x38);
  *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + 1;
  if (*(int *)(this + 0x44) < *(int *)(this + 0x3c)) {
    *(undefined4 *)(this + 0x44) = *(undefined4 *)(this + 0x3c);
  }
  *(int *)(this + 0x40) = *(int *)(this + 0x40) + 1;
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + 1;
  return uVar1;
}

// ---- tinyxml2::MemPoolT<52>::MemPoolT  @ 0x5f8814
/* tinyxml2::MemPoolT<52>::MemPoolT() */

MemPoolT<52> * __thiscall tinyxml2::MemPoolT<52>::MemPoolT(MemPoolT<52> *this)

{
  MemPool::MemPool((MemPool *)this);
  *(undefined ***)this = &PTR__MemPoolT_1_00936e18;
  DynArray<tinyxml2::MemPoolT<52>::Block*,10>::DynArray
            ((DynArray<tinyxml2::MemPoolT<52>::Block*,10> *)(this + 4));
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 *)(this + 0x44) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  return this;
}

// ---- tinyxml2::MemPoolT<52>::~MemPoolT  @ 0x5f8878
/* WARNING: Removing unreachable block (ram,0x005f88e2) */
/* tinyxml2::MemPoolT<52>::~MemPoolT() */

MemPoolT<52> * __thiscall tinyxml2::MemPoolT<52>::~MemPoolT(MemPoolT<52> *this)

{
  undefined4 *puVar1;
  int iVar2;
  int local_c;
  
  *(undefined ***)this = &PTR__MemPoolT_1_00936e18;
  for (local_c = 0;
      iVar2 = DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Size
                        ((DynArray<tinyxml2::MemPoolT<52>::Block*,10> *)(this + 4)), local_c < iVar2
      ; local_c = local_c + 1) {
    puVar1 = (undefined4 *)
             DynArray<tinyxml2::MemPoolT<52>::Block*,10>::operator[]
                       ((DynArray<tinyxml2::MemPoolT<52>::Block*,10> *)(this + 4),local_c);
    operator_delete((void *)*puVar1);
  }
  DynArray<tinyxml2::MemPoolT<52>::Block*,10>::~DynArray
            ((DynArray<tinyxml2::MemPoolT<52>::Block*,10> *)(this + 4));
  MemPool::~MemPool((MemPool *)this);
  return this;
}

// ---- tinyxml2::MemPoolT<52>::~MemPoolT  @ 0x5f88fc
/* tinyxml2::MemPoolT<52>::~MemPoolT() */

MemPoolT<52> * __thiscall tinyxml2::MemPoolT<52>::~MemPoolT(MemPoolT<52> *this)

{
  ~MemPoolT(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::MemPoolT<36>::MemPoolT  @ 0x5f8918
/* tinyxml2::MemPoolT<36>::MemPoolT() */

MemPoolT<36> * __thiscall tinyxml2::MemPoolT<36>::MemPoolT(MemPoolT<36> *this)

{
  MemPool::MemPool((MemPool *)this);
  *(undefined ***)this = &PTR__MemPoolT_1_00936df8;
  DynArray<tinyxml2::MemPoolT<36>::Block*,10>::DynArray
            ((DynArray<tinyxml2::MemPoolT<36>::Block*,10> *)(this + 4));
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 *)(this + 0x44) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  return this;
}

// ---- tinyxml2::MemPoolT<36>::~MemPoolT  @ 0x5f897c
/* WARNING: Removing unreachable block (ram,0x005f89e6) */
/* tinyxml2::MemPoolT<36>::~MemPoolT() */

MemPoolT<36> * __thiscall tinyxml2::MemPoolT<36>::~MemPoolT(MemPoolT<36> *this)

{
  undefined4 *puVar1;
  int iVar2;
  int local_c;
  
  *(undefined ***)this = &PTR__MemPoolT_1_00936df8;
  for (local_c = 0;
      iVar2 = DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Size
                        ((DynArray<tinyxml2::MemPoolT<36>::Block*,10> *)(this + 4)), local_c < iVar2
      ; local_c = local_c + 1) {
    puVar1 = (undefined4 *)
             DynArray<tinyxml2::MemPoolT<36>::Block*,10>::operator[]
                       ((DynArray<tinyxml2::MemPoolT<36>::Block*,10> *)(this + 4),local_c);
    operator_delete((void *)*puVar1);
  }
  DynArray<tinyxml2::MemPoolT<36>::Block*,10>::~DynArray
            ((DynArray<tinyxml2::MemPoolT<36>::Block*,10> *)(this + 4));
  MemPool::~MemPool((MemPool *)this);
  return this;
}

// ---- tinyxml2::MemPoolT<36>::~MemPoolT  @ 0x5f8a00
/* tinyxml2::MemPoolT<36>::~MemPoolT() */

MemPoolT<36> * __thiscall tinyxml2::MemPoolT<36>::~MemPoolT(MemPoolT<36> *this)

{
  ~MemPoolT(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::MemPoolT<48>::MemPoolT  @ 0x5f8a1c
/* tinyxml2::MemPoolT<48>::MemPoolT() */

MemPoolT<48> * __thiscall tinyxml2::MemPoolT<48>::MemPoolT(MemPoolT<48> *this)

{
  MemPool::MemPool((MemPool *)this);
  *(undefined ***)this = &PTR__MemPoolT_1_00936dd8;
  DynArray<tinyxml2::MemPoolT<48>::Block*,10>::DynArray
            ((DynArray<tinyxml2::MemPoolT<48>::Block*,10> *)(this + 4));
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 *)(this + 0x44) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  return this;
}

// ---- tinyxml2::MemPoolT<48>::~MemPoolT  @ 0x5f8a80
/* WARNING: Removing unreachable block (ram,0x005f8aea) */
/* tinyxml2::MemPoolT<48>::~MemPoolT() */

MemPoolT<48> * __thiscall tinyxml2::MemPoolT<48>::~MemPoolT(MemPoolT<48> *this)

{
  undefined4 *puVar1;
  int iVar2;
  int local_c;
  
  *(undefined ***)this = &PTR__MemPoolT_1_00936dd8;
  for (local_c = 0;
      iVar2 = DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Size
                        ((DynArray<tinyxml2::MemPoolT<48>::Block*,10> *)(this + 4)), local_c < iVar2
      ; local_c = local_c + 1) {
    puVar1 = (undefined4 *)
             DynArray<tinyxml2::MemPoolT<48>::Block*,10>::operator[]
                       ((DynArray<tinyxml2::MemPoolT<48>::Block*,10> *)(this + 4),local_c);
    operator_delete((void *)*puVar1);
  }
  DynArray<tinyxml2::MemPoolT<48>::Block*,10>::~DynArray
            ((DynArray<tinyxml2::MemPoolT<48>::Block*,10> *)(this + 4));
  MemPool::~MemPool((MemPool *)this);
  return this;
}

// ---- tinyxml2::MemPoolT<48>::~MemPoolT  @ 0x5f8b04
/* tinyxml2::MemPoolT<48>::~MemPoolT() */

MemPoolT<48> * __thiscall tinyxml2::MemPoolT<48>::~MemPoolT(MemPoolT<48> *this)

{
  ~MemPoolT(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::MemPoolT<44>::MemPoolT  @ 0x5f8b20
/* tinyxml2::MemPoolT<44>::MemPoolT() */

MemPoolT<44> * __thiscall tinyxml2::MemPoolT<44>::MemPoolT(MemPoolT<44> *this)

{
  MemPool::MemPool((MemPool *)this);
  *(undefined ***)this = &PTR__MemPoolT_1_00936db8;
  DynArray<tinyxml2::MemPoolT<44>::Block*,10>::DynArray
            ((DynArray<tinyxml2::MemPoolT<44>::Block*,10> *)(this + 4));
  *(undefined4 *)(this + 0x38) = 0;
  *(undefined4 *)(this + 0x3c) = 0;
  *(undefined4 *)(this + 0x40) = 0;
  *(undefined4 *)(this + 0x44) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  return this;
}

// ---- tinyxml2::MemPoolT<44>::~MemPoolT  @ 0x5f8b84
/* WARNING: Removing unreachable block (ram,0x005f8bee) */
/* tinyxml2::MemPoolT<44>::~MemPoolT() */

MemPoolT<44> * __thiscall tinyxml2::MemPoolT<44>::~MemPoolT(MemPoolT<44> *this)

{
  undefined4 *puVar1;
  int iVar2;
  int local_c;
  
  *(undefined ***)this = &PTR__MemPoolT_1_00936db8;
  for (local_c = 0;
      iVar2 = DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Size
                        ((DynArray<tinyxml2::MemPoolT<44>::Block*,10> *)(this + 4)), local_c < iVar2
      ; local_c = local_c + 1) {
    puVar1 = (undefined4 *)
             DynArray<tinyxml2::MemPoolT<44>::Block*,10>::operator[]
                       ((DynArray<tinyxml2::MemPoolT<44>::Block*,10> *)(this + 4),local_c);
    operator_delete((void *)*puVar1);
  }
  DynArray<tinyxml2::MemPoolT<44>::Block*,10>::~DynArray
            ((DynArray<tinyxml2::MemPoolT<44>::Block*,10> *)(this + 4));
  MemPool::~MemPool((MemPool *)this);
  return this;
}

// ---- tinyxml2::MemPoolT<44>::~MemPoolT  @ 0x5f8c08
/* tinyxml2::MemPoolT<44>::~MemPoolT() */

MemPoolT<44> * __thiscall tinyxml2::MemPoolT<44>::~MemPoolT(MemPoolT<44> *this)

{
  ~MemPoolT(this);
  operator_delete(this);
  return this;
}

// ---- tinyxml2::DynArray<char_const*,10>::DynArray  @ 0x5f8c24
/* tinyxml2::DynArray<char const*, 10>::DynArray() */

DynArray<char_const*,10> * __thiscall
tinyxml2::DynArray<char_const*,10>::DynArray(DynArray<char_const*,10> *this)

{
  *(DynArray<char_const*,10> **)this = this + 4;
  *(undefined4 *)(this + 0x2c) = 10;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::DynArray<char,20>::DynArray  @ 0x5f8c44
/* tinyxml2::DynArray<char, 20>::DynArray() */

DynArray<char,20> * __thiscall tinyxml2::DynArray<char,20>::DynArray(DynArray<char,20> *this)

{
  *(DynArray<char,20> **)this = this + 4;
  *(undefined4 *)(this + 0x18) = 0x14;
  *(undefined4 *)(this + 0x1c) = 0;
  return this;
}

// ---- tinyxml2::DynArray<char,20>::Push  @ 0x5f8c64
/* tinyxml2::DynArray<char, 20>::Push(char) */

void __thiscall tinyxml2::DynArray<char,20>::Push(DynArray<char,20> *this,char param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x1c) + 1);
  iVar1 = *(int *)(this + 0x1c);
  *(int *)(this + 0x1c) = iVar1 + 1;
  *(char *)(iVar1 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<char,20>::PushArr  @ 0x5f8c9c
/* tinyxml2::DynArray<char, 20>::PushArr(int) */

int __thiscall tinyxml2::DynArray<char,20>::PushArr(DynArray<char,20> *this,int param_1)

{
  int iVar1;
  
  EnsureCapacity(this,param_1 + *(int *)(this + 0x1c));
  iVar1 = *(int *)(this + 0x1c);
  *(int *)(this + 0x1c) = *(int *)(this + 0x1c) + param_1;
  return iVar1 + *(int *)this;
}

// ---- tinyxml2::DynArray<char_const*,10>::Push  @ 0x5f8cd8
/* tinyxml2::DynArray<char const*, 10>::Push(char const*) */

void __thiscall
tinyxml2::DynArray<char_const*,10>::Push(DynArray<char_const*,10> *this,char *param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x30) + 1);
  iVar1 = *(int *)(this + 0x30);
  *(int *)(this + 0x30) = iVar1 + 1;
  *(char **)(iVar1 * 4 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<char_const*,10>::Pop  @ 0x5f8d0c
/* tinyxml2::DynArray<char const*, 10>::Pop() */

undefined4 __thiscall tinyxml2::DynArray<char_const*,10>::Pop(DynArray<char_const*,10> *this)

{
  *(int *)(this + 0x30) = *(int *)(this + 0x30) + -1;
  return *(undefined4 *)(*(int *)(this + 0x30) * 4 + *(int *)this);
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Push  @ 0x5f8d30
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::Push(tinyxml2::MemPoolT<44>::Block*) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Push
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this,Block *param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x30) + 1);
  iVar1 = *(int *)(this + 0x30);
  *(int *)(this + 0x30) = iVar1 + 1;
  *(Block **)(iVar1 * 4 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Push  @ 0x5f8d64
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::Push(tinyxml2::MemPoolT<48>::Block*) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Push
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this,Block *param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x30) + 1);
  iVar1 = *(int *)(this + 0x30);
  *(int *)(this + 0x30) = iVar1 + 1;
  *(Block **)(iVar1 * 4 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Push  @ 0x5f8d98
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::Push(tinyxml2::MemPoolT<52>::Block*) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Push
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this,Block *param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x30) + 1);
  iVar1 = *(int *)(this + 0x30);
  *(int *)(this + 0x30) = iVar1 + 1;
  *(Block **)(iVar1 * 4 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Push  @ 0x5f8dcc
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::Push(tinyxml2::MemPoolT<36>::Block*) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Push
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this,Block *param_1)

{
  int iVar1;
  
  EnsureCapacity(this,*(int *)(this + 0x30) + 1);
  iVar1 = *(int *)(this + 0x30);
  *(int *)(this + 0x30) = iVar1 + 1;
  *(Block **)(iVar1 * 4 + *(int *)this) = param_1;
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::DynArray  @ 0x5f8e00
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::DynArray() */

DynArray<tinyxml2::MemPoolT<52>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::DynArray
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this)

{
  *(DynArray<tinyxml2::MemPoolT<52>::Block*,10> **)this = this + 4;
  *(undefined4 *)(this + 0x2c) = 10;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::~DynArray  @ 0x5f8e20
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::~DynArray() */

DynArray<tinyxml2::MemPoolT<52>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::~DynArray
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this)

{
  if ((*(DynArray<tinyxml2::MemPoolT<52>::Block*,10> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Size  @ 0x5f8e50
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::Size() const */

undefined4 __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::Size
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::operator[]  @ 0x5f8e60
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::operator[](int) */

int __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::operator[]
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this,int param_1)

{
  return param_1 * 4 + *(int *)this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::DynArray  @ 0x5f8e78
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::DynArray() */

DynArray<tinyxml2::MemPoolT<36>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::DynArray
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this)

{
  *(DynArray<tinyxml2::MemPoolT<36>::Block*,10> **)this = this + 4;
  *(undefined4 *)(this + 0x2c) = 10;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::~DynArray  @ 0x5f8e98
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::~DynArray() */

DynArray<tinyxml2::MemPoolT<36>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::~DynArray
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this)

{
  if ((*(DynArray<tinyxml2::MemPoolT<36>::Block*,10> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Size  @ 0x5f8ec8
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::Size() const */

undefined4 __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::Size
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::operator[]  @ 0x5f8ed8
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::operator[](int) */

int __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::operator[]
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this,int param_1)

{
  return param_1 * 4 + *(int *)this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::DynArray  @ 0x5f8ef0
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::DynArray() */

DynArray<tinyxml2::MemPoolT<48>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::DynArray
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this)

{
  *(DynArray<tinyxml2::MemPoolT<48>::Block*,10> **)this = this + 4;
  *(undefined4 *)(this + 0x2c) = 10;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::~DynArray  @ 0x5f8f10
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::~DynArray() */

DynArray<tinyxml2::MemPoolT<48>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::~DynArray
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this)

{
  if ((*(DynArray<tinyxml2::MemPoolT<48>::Block*,10> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Size  @ 0x5f8f40
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::Size() const */

undefined4 __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::Size
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::operator[]  @ 0x5f8f50
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::operator[](int) */

int __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::operator[]
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this,int param_1)

{
  return param_1 * 4 + *(int *)this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::DynArray  @ 0x5f8f68
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::DynArray() */

DynArray<tinyxml2::MemPoolT<44>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::DynArray
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this)

{
  *(DynArray<tinyxml2::MemPoolT<44>::Block*,10> **)this = this + 4;
  *(undefined4 *)(this + 0x2c) = 10;
  *(undefined4 *)(this + 0x30) = 0;
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::~DynArray  @ 0x5f8f88
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::~DynArray() */

DynArray<tinyxml2::MemPoolT<44>::Block*,10> * __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::~DynArray
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this)

{
  if ((*(DynArray<tinyxml2::MemPoolT<44>::Block*,10> **)this != this + 4) && (*(int *)this != 0)) {
    operator_delete__(*(void **)this);
  }
  return this;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Size  @ 0x5f8fb8
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::Size() const */

undefined4 __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::Size
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this)

{
  return *(undefined4 *)(this + 0x30);
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::operator[]  @ 0x5f8fc8
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::operator[](int) */

int __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::operator[]
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this,int param_1)

{
  return param_1 * 4 + *(int *)this;
}

// ---- tinyxml2::DynArray<char,20>::EnsureCapacity  @ 0x5f8fe0
/* tinyxml2::DynArray<char, 20>::EnsureCapacity(int) */

void __thiscall tinyxml2::DynArray<char,20>::EnsureCapacity(DynArray<char,20> *this,int param_1)

{
  void *__dest;
  
  if (*(int *)(this + 0x18) < param_1) {
    __dest = operator_new__(param_1 << 1);
    memcpy(__dest,*(void **)this,*(size_t *)(this + 0x1c));
    if ((*(DynArray<char,20> **)this != this + 4) && (*(int *)this != 0)) {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x18) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::DynArray<char_const*,10>::EnsureCapacity  @ 0x5f9048
/* tinyxml2::DynArray<char const*, 10>::EnsureCapacity(int) */

void __thiscall
tinyxml2::DynArray<char_const*,10>::EnsureCapacity(DynArray<char_const*,10> *this,int param_1)

{
  void *__dest;
  uint uVar1;
  
  if (*(int *)(this + 0x2c) < param_1) {
    if ((uint)(param_1 << 1) < 0x1fc00001) {
      uVar1 = param_1 << 3;
    }
    else {
      uVar1 = 0xffffffff;
    }
    __dest = operator_new__(uVar1);
    memcpy(__dest,*(void **)this,*(int *)(this + 0x30) << 2);
    if ((*(DynArray<char_const*,10> **)this != this + 4) && (*(int *)this != 0)) {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x2c) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::EnsureCapacity  @ 0x5f90c0
/* tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*, 10>::EnsureCapacity(int) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<44>::Block*,10>::EnsureCapacity
          (DynArray<tinyxml2::MemPoolT<44>::Block*,10> *this,int param_1)

{
  void *__dest;
  uint uVar1;
  
  if (*(int *)(this + 0x2c) < param_1) {
    if ((uint)(param_1 << 1) < 0x1fc00001) {
      uVar1 = param_1 << 3;
    }
    else {
      uVar1 = 0xffffffff;
    }
    __dest = operator_new__(uVar1);
    memcpy(__dest,*(void **)this,*(int *)(this + 0x30) << 2);
    if ((*(DynArray<tinyxml2::MemPoolT<44>::Block*,10> **)this != this + 4) && (*(int *)this != 0))
    {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x2c) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::EnsureCapacity  @ 0x5f9138
/* tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*, 10>::EnsureCapacity(int) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<48>::Block*,10>::EnsureCapacity
          (DynArray<tinyxml2::MemPoolT<48>::Block*,10> *this,int param_1)

{
  void *__dest;
  uint uVar1;
  
  if (*(int *)(this + 0x2c) < param_1) {
    if ((uint)(param_1 << 1) < 0x1fc00001) {
      uVar1 = param_1 << 3;
    }
    else {
      uVar1 = 0xffffffff;
    }
    __dest = operator_new__(uVar1);
    memcpy(__dest,*(void **)this,*(int *)(this + 0x30) << 2);
    if ((*(DynArray<tinyxml2::MemPoolT<48>::Block*,10> **)this != this + 4) && (*(int *)this != 0))
    {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x2c) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::EnsureCapacity  @ 0x5f91b0
/* tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*, 10>::EnsureCapacity(int) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<52>::Block*,10>::EnsureCapacity
          (DynArray<tinyxml2::MemPoolT<52>::Block*,10> *this,int param_1)

{
  void *__dest;
  uint uVar1;
  
  if (*(int *)(this + 0x2c) < param_1) {
    if ((uint)(param_1 << 1) < 0x1fc00001) {
      uVar1 = param_1 << 3;
    }
    else {
      uVar1 = 0xffffffff;
    }
    __dest = operator_new__(uVar1);
    memcpy(__dest,*(void **)this,*(int *)(this + 0x30) << 2);
    if ((*(DynArray<tinyxml2::MemPoolT<52>::Block*,10> **)this != this + 4) && (*(int *)this != 0))
    {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x2c) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::EnsureCapacity  @ 0x5f9228
/* tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*, 10>::EnsureCapacity(int) */

void __thiscall
tinyxml2::DynArray<tinyxml2::MemPoolT<36>::Block*,10>::EnsureCapacity
          (DynArray<tinyxml2::MemPoolT<36>::Block*,10> *this,int param_1)

{
  void *__dest;
  uint uVar1;
  
  if (*(int *)(this + 0x2c) < param_1) {
    if ((uint)(param_1 << 1) < 0x1fc00001) {
      uVar1 = param_1 << 3;
    }
    else {
      uVar1 = 0xffffffff;
    }
    __dest = operator_new__(uVar1);
    memcpy(__dest,*(void **)this,*(int *)(this + 0x30) << 2);
    if ((*(DynArray<tinyxml2::MemPoolT<36>::Block*,10> **)this != this + 4) && (*(int *)this != 0))
    {
      operator_delete__(*(void **)this);
    }
    *(void **)this = __dest;
    *(int *)(this + 0x2c) = param_1 << 1;
  }
  return;
}

// ---- tinyxml2::MemPoolT<44>::ItemSize  @ 0x5f92a0
/* tinyxml2::MemPoolT<44>::ItemSize() const */

undefined4 tinyxml2::MemPoolT<44>::ItemSize(void)

{
  return 0x2c;
}

// ---- tinyxml2::MemPoolT<44>::Free  @ 0x5f92ac
/* tinyxml2::MemPoolT<44>::Free(void*) */

void __thiscall tinyxml2::MemPoolT<44>::Free(MemPoolT<44> *this,void *param_1)

{
  if (param_1 != (void *)0x0) {
    *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + -1;
    *(undefined4 *)param_1 = *(undefined4 *)(this + 0x38);
    *(void **)(this + 0x38) = param_1;
  }
  return;
}

// ---- tinyxml2::MemPoolT<44>::SetTracked  @ 0x5f92dc
/* tinyxml2::MemPoolT<44>::SetTracked() */

void __thiscall tinyxml2::MemPoolT<44>::SetTracked(MemPoolT<44> *this)

{
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + -1;
  return;
}

// ---- tinyxml2::MemPoolT<48>::ItemSize  @ 0x5f92f0
/* tinyxml2::MemPoolT<48>::ItemSize() const */

undefined4 tinyxml2::MemPoolT<48>::ItemSize(void)

{
  return 0x30;
}

// ---- tinyxml2::MemPoolT<48>::Free  @ 0x5f92fc
/* tinyxml2::MemPoolT<48>::Free(void*) */

void __thiscall tinyxml2::MemPoolT<48>::Free(MemPoolT<48> *this,void *param_1)

{
  if (param_1 != (void *)0x0) {
    *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + -1;
    *(undefined4 *)param_1 = *(undefined4 *)(this + 0x38);
    *(void **)(this + 0x38) = param_1;
  }
  return;
}

// ---- tinyxml2::MemPoolT<48>::SetTracked  @ 0x5f932c
/* tinyxml2::MemPoolT<48>::SetTracked() */

void __thiscall tinyxml2::MemPoolT<48>::SetTracked(MemPoolT<48> *this)

{
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + -1;
  return;
}

// ---- tinyxml2::MemPoolT<36>::ItemSize  @ 0x5f9340
/* tinyxml2::MemPoolT<36>::ItemSize() const */

undefined4 tinyxml2::MemPoolT<36>::ItemSize(void)

{
  return 0x24;
}

// ---- tinyxml2::MemPoolT<36>::Free  @ 0x5f934c
/* tinyxml2::MemPoolT<36>::Free(void*) */

void __thiscall tinyxml2::MemPoolT<36>::Free(MemPoolT<36> *this,void *param_1)

{
  if (param_1 != (void *)0x0) {
    *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + -1;
    *(undefined4 *)param_1 = *(undefined4 *)(this + 0x38);
    *(void **)(this + 0x38) = param_1;
  }
  return;
}

// ---- tinyxml2::MemPoolT<36>::SetTracked  @ 0x5f937c
/* tinyxml2::MemPoolT<36>::SetTracked() */

void __thiscall tinyxml2::MemPoolT<36>::SetTracked(MemPoolT<36> *this)

{
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + -1;
  return;
}

// ---- tinyxml2::MemPoolT<52>::ItemSize  @ 0x5f9390
/* tinyxml2::MemPoolT<52>::ItemSize() const */

undefined4 tinyxml2::MemPoolT<52>::ItemSize(void)

{
  return 0x34;
}

// ---- tinyxml2::MemPoolT<52>::Free  @ 0x5f939c
/* tinyxml2::MemPoolT<52>::Free(void*) */

void __thiscall tinyxml2::MemPoolT<52>::Free(MemPoolT<52> *this,void *param_1)

{
  if (param_1 != (void *)0x0) {
    *(int *)(this + 0x3c) = *(int *)(this + 0x3c) + -1;
    *(undefined4 *)param_1 = *(undefined4 *)(this + 0x38);
    *(void **)(this + 0x38) = param_1;
  }
  return;
}

// ---- tinyxml2::MemPoolT<52>::SetTracked  @ 0x5f93cc
/* tinyxml2::MemPoolT<52>::SetTracked() */

void __thiscall tinyxml2::MemPoolT<52>::SetTracked(MemPoolT<52> *this)

{
  *(int *)(this + 0x48) = *(int *)(this + 0x48) + -1;
  return;
}
