.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;
.source "JSRInlinerAdapter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    }
.end annotation


# static fields
.field private static final LOGGING:Z = false


# instance fields
.field final dualCitizens:Ljava/util/BitSet;

.field private final mainSubroutine:Ljava/util/BitSet;

.field private final subroutineHeads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "api"    # I
    .param p2, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;
    .param p7, "exceptions"    # [Ljava/lang/String;

    .line 149
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    .line 85
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    .line 150
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 151
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;

    .line 116
    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;

    if-ne v0, v1, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private emitCode()V
    .locals 11

    .line 379
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 382
    .local v0, "worklist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;>;"
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;-><init>()V

    move-object v7, v1

    .line 387
    .local v7, "newInstructions":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 388
    .local v8, "newTryCatchBlocks":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 389
    .local v9, "newLocalVariables":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    .line 391
    .local v10, "inst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    move-object v1, p0

    move-object v2, v10

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->emitSubroutine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    .line 393
    .end local v10    # "inst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    goto :goto_0

    .line 394
    :cond_0
    iput-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 395
    iput-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    .line 396
    iput-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    .line 397
    return-void
.end method

.method private emitSubroutine(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .locals 19
    .param p1, "instant"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    .param p3, "newInstructions"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;",
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;",
            ">;",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;",
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;",
            ">;)V"
        }
    .end annotation

    .line 420
    .local p2, "worklist":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;>;"
    .local p4, "newTryCatchBlocks":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    .local p5, "newLocalVariables":Ljava/util/List;, "Ljava/util/List<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 429
    .local v3, "duplbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v5

    .local v5, "c":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 430
    iget-object v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v6, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v6

    .line 431
    .local v6, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v7

    .line 434
    .local v7, "owner":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 439
    move-object v8, v6

    check-cast v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 440
    .local v8, "ilbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v9

    .line 445
    .local v9, "remap":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    if-eq v9, v3, :cond_0

    .line 446
    invoke-virtual {v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 447
    move-object v3, v9

    move-object/from16 v10, p2

    goto/16 :goto_2

    .line 445
    :cond_0
    move-object/from16 v10, p2

    goto/16 :goto_2

    .line 457
    .end local v8    # "ilbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v9    # "remap":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    :cond_1
    if-eq v7, v1, :cond_2

    .line 458
    move-object/from16 v10, p2

    goto/16 :goto_2

    .line 465
    :cond_2
    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v8

    const/16 v9, 0xa9

    const/16 v10, 0xa7

    if-ne v8, v9, :cond_6

    .line 474
    const/4 v8, 0x0

    .line 475
    .local v8, "retlabel":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    move-object/from16 v9, p1

    .local v9, "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :goto_1
    if-eqz v9, :cond_4

    .line 476
    iget-object v11, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->subroutine:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 477
    iget-object v8, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 475
    :cond_3
    iget-object v9, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->previous:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_1

    .line 480
    .end local v9    # "p":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :cond_4
    if-eqz v8, :cond_5

    .line 487
    new-instance v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    invoke-direct {v9, v10, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    invoke-virtual {v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 488
    .end local v8    # "retlabel":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    move-object/from16 v10, p2

    goto :goto_2

    .line 484
    .restart local v8    # "retlabel":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    :cond_5
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Instruction #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is a RET not owned by any subroutine"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 488
    .end local v8    # "retlabel":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    :cond_6
    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v8

    const/16 v9, 0xa8

    if-ne v8, v9, :cond_7

    .line 489
    move-object v8, v6

    check-cast v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    iget-object v8, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 490
    .local v8, "lbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    iget-object v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/BitSet;

    .line 491
    .local v9, "sub":Ljava/util/BitSet;
    new-instance v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;

    invoke-direct {v11, v0, v1, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    .line 492
    .local v11, "newinst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    invoke-virtual {v11, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v12

    .line 503
    .local v12, "startlbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    new-instance v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnNode;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v2, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 504
    new-instance v13, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    invoke-direct {v13, v10, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    invoke-virtual {v2, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 505
    iget-object v10, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 509
    move-object/from16 v10, p2

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v8    # "lbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v9    # "sub":Ljava/util/BitSet;
    .end local v11    # "newinst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    .end local v12    # "startlbl":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    goto :goto_2

    .line 511
    :cond_7
    move-object/from16 v10, p2

    invoke-virtual {v6, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 429
    .end local v6    # "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .end local v7    # "owner":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v10, p2

    .line 516
    .end local v4    # "i":I
    .end local v5    # "c":I
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 517
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 518
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    .line 526
    .local v5, "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    iget-object v6, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v6

    .line 527
    .local v6, "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    iget-object v7, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v7

    .line 530
    .local v7, "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    if-ne v6, v7, :cond_9

    .line 534
    goto :goto_3

    .line 537
    :cond_9
    iget-object v8, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->gotoLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v8

    .line 545
    .local v8, "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    .line 549
    new-instance v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    iget-object v11, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v9, v6, v7, v8, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/lang/String;)V

    move-object/from16 v11, p4

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v5    # "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    .end local v6    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v7    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v8    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    goto :goto_3

    .line 545
    .restart local v5    # "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    .restart local v6    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .restart local v7    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .restart local v8    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    :cond_a
    move-object/from16 v11, p4

    .line 546
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v12, "Internal error!"

    invoke-direct {v9, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 517
    .end local v5    # "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    .end local v6    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v7    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v8    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    :cond_b
    move-object/from16 v11, p4

    .line 553
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    iget-object v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 554
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 555
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;

    .line 559
    .local v5, "lvnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;
    iget-object v6, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v6

    .line 560
    .restart local v6    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    iget-object v7, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter$Instantiation;->rangeLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v7

    .line 561
    .restart local v7    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    if-ne v6, v7, :cond_c

    .line 565
    goto :goto_4

    .line 567
    :cond_c
    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;

    iget-object v13, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v14, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v15, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget v9, v5, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;->index:I

    move-object v12, v8

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v9

    invoke-direct/range {v12 .. v18}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;I)V

    move-object/from16 v9, p5

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v5    # "lvnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;
    .end local v6    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v7    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    goto :goto_4

    .line 554
    :cond_d
    move-object/from16 v9, p5

    .line 570
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LocalVariableNode;>;"
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 573
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 8
    .param p1, "sub"    # Ljava/util/BitSet;
    .param p2, "index"    # I
    .param p3, "anyvisited"    # Ljava/util/BitSet;

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "loop":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 242
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 244
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;

    .line 253
    .local v2, "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v4, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->handler:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v3

    .line 254
    .local v3, "handlerindex":I
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    goto :goto_1

    .line 258
    :cond_0
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v5, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->start:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v4

    .line 259
    .local v4, "startindex":I
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v6, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;->end:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v5, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v5

    .line 260
    .local v5, "endindex":I
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .line 261
    .local v6, "nextbit":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    if-ge v6, v5, :cond_1

    .line 267
    invoke-direct {p0, p1, v3, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 268
    const/4 v0, 0x1

    .line 270
    .end local v2    # "trycatch":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;
    .end local v3    # "handlerindex":I
    .end local v4    # "startindex":I
    .end local v5    # "endindex":I
    .end local v6    # "nextbit":I
    :cond_1
    goto :goto_1

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TryCatchBlockNode;>;"
    :cond_2
    goto :goto_0

    .line 272
    :cond_3
    return-void
.end method

.method private markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V
    .locals 6
    .param p1, "sub"    # Ljava/util/BitSet;
    .param p2, "index"    # I
    .param p3, "anyvisited"    # Ljava/util/BitSet;

    .line 290
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 293
    .local v0, "node":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 299
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->dualCitizens:Ljava/util/BitSet;

    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    .line 305
    :cond_1
    invoke-virtual {p3, p2}, Ljava/util/BitSet;->set(I)V

    .line 307
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 308
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_2

    .line 311
    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    .line 312
    .local v1, "jnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 313
    .local v2, "destidx":I
    invoke-direct {p0, p1, v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 315
    .end local v1    # "jnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;
    .end local v2    # "destidx":I
    :cond_2
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 316
    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;

    .line 317
    .local v1, "tsnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 318
    .restart local v2    # "destidx":I
    invoke-direct {p0, p1, v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 319
    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 320
    iget-object v4, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 321
    .local v4, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v5, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 322
    invoke-direct {p0, p1, v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 319
    .end local v4    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 325
    .end local v1    # "tsnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/TableSwitchInsnNode;
    .end local v2    # "destidx":I
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 326
    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;

    .line 327
    .local v1, "lsnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 328
    .restart local v2    # "destidx":I
    invoke-direct {p0, p1, v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 329
    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 330
    iget-object v4, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 331
    .restart local v4    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v5, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 332
    :try_start_0
    invoke-direct {p0, p1, v2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalkDFS(Ljava/util/BitSet;ILjava/util/BitSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v4    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 338
    .end local v1    # "lsnode":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;
    .end local v2    # "destidx":I
    .end local v3    # "i":I
    .end local p0    # "this":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;
    :cond_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 359
    add-int/lit8 p2, p2, 0x1

    .line 368
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v1

    if-lt p2, v1, :cond_5

    .line 369
    return-void

    .line 354
    :sswitch_0
    return-void

    .line 371
    .end local v0    # "node":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :cond_5
    goto/16 :goto_0

    .line 332
    .end local p1    # "sub":Ljava/util/BitSet;
    .end local p2    # "index":I
    .end local p3    # "anyvisited":Ljava/util/BitSet;
    :catchall_0
    move-exception p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0xa7 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method private markSubroutines()V
    .locals 6

    .line 196
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 200
    .local v0, "anyvisited":Ljava/util/BitSet;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mainSubroutine:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 204
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    .line 205
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/util/BitSet;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 207
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/util/BitSet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 208
    .local v3, "lab":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    .line 209
    .local v4, "sub":Ljava/util/BitSet;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v5, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I

    move-result v5

    .line 210
    .local v5, "index":I
    invoke-direct {p0, v4, v5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutineWalk(Ljava/util/BitSet;ILjava/util/BitSet;)V

    .line 211
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/util/BitSet;>;"
    .end local v3    # "lab":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .end local v4    # "sub":Ljava/util/BitSet;
    .end local v5    # "index":I
    goto :goto_0

    .line 212
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/util/BitSet;>;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->markSubroutines()V

    .line 182
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->emitCode()V

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 189
    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "lbl"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 159
    invoke-super {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodNode;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 160
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->instructions:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/JumpInsnNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 161
    .local v0, "ln":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    const/16 v1, 0xa8

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/JSRInlinerAdapter;->subroutineHeads:Ljava/util/Map;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-void
.end method
