// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- VariadicSQLParser::GetTypeMappingAtIndex  @ 0x50471c
/* VariadicSQLParser::GetTypeMappingAtIndex(int) */

undefined4 VariadicSQLParser::GetTypeMappingAtIndex(int param_1)

{
  return *(undefined4 *)(typeMappings + param_1 * 8 + 4);
}

// ---- VariadicSQLParser::GetTypeMappingIndices  @ 0x504740
/* VariadicSQLParser::GetTypeMappingIndices(char const*,
   DataStructures::List<VariadicSQLParser::IndexAndType>&) */

void VariadicSQLParser::GetTypeMappingIndices(char *param_1,List *param_2)

{
  size_t sVar1;
  int iVar2;
  bool bVar3;
  uint local_1c;
  int local_10;
  int local_c;
  
  DataStructures::List<VariadicSQLParser::IndexAndType>::Clear
            ((List<VariadicSQLParser::IndexAndType> *)param_2,false,
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
             ,0x32);
  sVar1 = strlen(param_1);
  bVar3 = false;
  for (local_1c = 0; local_1c < sVar1; local_1c = local_1c + 1) {
    if ((bVar3) && (iVar2 = GetTypeMappingIndex(param_1[local_1c]), iVar2 != -1)) {
      local_10 = local_1c - 1;
      local_c = iVar2;
      DataStructures::List<VariadicSQLParser::IndexAndType>::Insert
                ((List<VariadicSQLParser::IndexAndType> *)param_2,(IndexAndType *)&local_10,
                 "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                 ,0x3f);
    }
    bVar3 = param_1[local_1c] == '%';
  }
  return;
}

// ---- VariadicSQLParser::ExtractArguments  @ 0x5047dc
/* VariadicSQLParser::ExtractArguments(std::__va_list,
   DataStructures::List<VariadicSQLParser::IndexAndType> const&, char***, int**) */

void VariadicSQLParser::ExtractArguments
               (int *param_1,List<VariadicSQLParser::IndexAndType> *param_2,int *param_3,
               int *param_4)

{
  char cVar1;
  int iVar2;
  char **ppcVar3;
  int *piVar4;
  int iVar5;
  size_t sVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  char *__s;
  void *__src;
  int *local_34;
  uint local_30;
  int local_18;
  int iStack_14;
  
  iVar2 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size(param_2);
  if (iVar2 != 0) {
    iVar2 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size(param_2);
    ppcVar3 = RakNet::OP_NEW_ARRAY<char*>
                        (iVar2,
                         "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                         ,0x4c);
    *param_3 = (int)ppcVar3;
    iVar2 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size(param_2);
    piVar4 = RakNet::OP_NEW_ARRAY<int>
                       (iVar2,
                        "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                        ,0x4d);
    *param_4 = (int)piVar4;
    iVar2 = *param_3;
    iVar9 = *param_4;
    local_34 = param_1;
    for (local_30 = 0; uVar8 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size(param_2),
        local_30 < uVar8; local_30 = local_30 + 1) {
      iVar5 = DataStructures::List<VariadicSQLParser::IndexAndType>::operator[](param_2,local_30);
      switch(typeMappings[*(int *)(iVar5 + 4) * 8]) {
      case 0x61:
        __src = (void *)*local_34;
        *(int *)(iVar9 + local_30 * 4) = local_34[1];
        uVar7 = (*rakMalloc_Ex)(*(undefined4 *)(local_30 * 4 + iVar9),
                                "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                                ,0x8e);
        *(undefined4 *)(iVar2 + local_30 * 4) = uVar7;
        memcpy(*(void **)(local_30 * 4 + iVar2),__src,*(size_t *)(local_30 * 4 + iVar9));
        local_34 = local_34 + 2;
        break;
      case 0x62:
        piVar4 = local_34 + 1;
        local_18 = CONCAT31(local_18._1_3_,*local_34 != 0);
        *(undefined4 *)(local_30 * 4 + iVar9) = 1;
        uVar7 = (*rakMalloc_Ex)(*(undefined4 *)(local_30 * 4 + iVar9),
                                "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                                ,0x6d);
        *(undefined4 *)(iVar2 + local_30 * 4) = uVar7;
        memcpy(*(void **)(local_30 * 4 + iVar2),&local_18,*(size_t *)(local_30 * 4 + iVar9));
        cVar1 = RakNet::BitStream::IsNetworkOrder();
        local_34 = piVar4;
        if (cVar1 != '\x01') {
          RakNet::BitStream::ReverseBytesInPlace
                    (*(uchar **)(local_30 * 4 + iVar2),*(uint *)(local_30 * 4 + iVar9));
        }
        break;
      case 100:
      case 0x69:
        piVar4 = local_34 + 1;
        local_18 = *local_34;
        *(undefined4 *)(local_30 * 4 + iVar9) = 4;
        uVar7 = (*rakMalloc_Ex)(*(undefined4 *)(local_30 * 4 + iVar9),
                                "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                                ,0x5c);
        *(undefined4 *)(iVar2 + local_30 * 4) = uVar7;
        memcpy(*(void **)(local_30 * 4 + iVar2),&local_18,*(size_t *)(local_30 * 4 + iVar9));
        cVar1 = RakNet::BitStream::IsNetworkOrder();
        local_34 = piVar4;
        if (cVar1 != '\x01') {
          RakNet::BitStream::ReverseBytesInPlace
                    (*(uchar **)(local_30 * 4 + iVar2),*(uint *)(local_30 * 4 + iVar9));
        }
        break;
      case 0x66:
      case 0x67:
        piVar4 = (int *)((int)local_34 + 7U & 0xfffffff8);
        local_18 = *piVar4;
        iStack_14 = piVar4[1];
        *(undefined4 *)(local_30 * 4 + iVar9) = 8;
        uVar7 = (*rakMalloc_Ex)(*(undefined4 *)(local_30 * 4 + iVar9),
                                "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                                ,0x85);
        *(undefined4 *)(iVar2 + local_30 * 4) = uVar7;
        memcpy(*(void **)(local_30 * 4 + iVar2),&local_18,*(size_t *)(local_30 * 4 + iVar9));
        cVar1 = RakNet::BitStream::IsNetworkOrder();
        local_34 = piVar4 + 2;
        if (cVar1 != '\x01') {
          RakNet::BitStream::ReverseBytesInPlace
                    (*(uchar **)(local_30 * 4 + iVar2),*(uint *)(local_30 * 4 + iVar9));
        }
        break;
      case 0x73:
        __s = (char *)*local_34;
        sVar6 = strlen(__s);
        *(size_t *)(iVar9 + local_30 * 4) = sVar6;
        uVar7 = (*rakMalloc_Ex)(*(int *)(local_30 * 4 + iVar9) + 1,
                                "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                                ,0x65);
        *(undefined4 *)(iVar2 + local_30 * 4) = uVar7;
        memcpy(*(void **)(local_30 * 4 + iVar2),__s,*(int *)(local_30 * 4 + iVar9) + 1);
        local_34 = local_34 + 1;
      }
    }
  }
  return;
}

// ---- VariadicSQLParser::FreeArguments  @ 0x504ba0
/* VariadicSQLParser::FreeArguments(DataStructures::List<VariadicSQLParser::IndexAndType> const&,
   char**, int*) */

void VariadicSQLParser::FreeArguments(List *param_1,char **param_2,int *param_3)

{
  int iVar1;
  uint uVar2;
  uint local_c;
  
  iVar1 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size
                    ((List<VariadicSQLParser::IndexAndType> *)param_1);
  if (iVar1 != 0) {
    for (local_c = 0;
        uVar2 = DataStructures::List<VariadicSQLParser::IndexAndType>::Size
                          ((List<VariadicSQLParser::IndexAndType> *)param_1), local_c < uVar2;
        local_c = local_c + 1) {
      (*rakFree_Ex)(param_2[local_c],
                    "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
                    ,0x9d);
    }
    RakNet::OP_DELETE_ARRAY<char*>
              (param_2,
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
               ,0x9e);
    RakNet::OP_DELETE_ARRAY<int>
              (param_3,
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/VariadicSQLParser.cpp"
               ,0x9f);
  }
  return;
}
