.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
.source "AnalyzerAdapter.java"


# instance fields
.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;",
            ">;"
        }
    .end annotation
.end field

.field public locals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private maxLocals:I

.field private maxStack:I

.field private owner:Ljava/lang/String;

.field public stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uninitializedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 5
    .param p1, "api"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "access"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 171
    invoke-direct {p0, p1, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 172
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    .line 177
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_1

    .line 178
    const-string v0, "<init>"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    :goto_0
    invoke-static {p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v0

    .line 185
    .local v0, "types":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 186
    aget-object v2, v0, v1

    .line 187
    .local v2, "type":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getSort()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 211
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :pswitch_0
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    goto :goto_2

    .line 203
    :pswitch_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    goto :goto_2

    .line 199
    :pswitch_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_2

    .line 196
    :pswitch_3
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_2

    .line 193
    :pswitch_4
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    nop

    .line 185
    .end local v2    # "type":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 215
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 144
    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;

    if-ne v0, v1, :cond_0

    .line 148
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 335
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 339
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 340
    return-void

    .line 342
    :cond_1
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 343
    const/16 v0, 0xb8

    if-eq p1, v0, :cond_6

    .line 344
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "t":Ljava/lang/Object;
    const/16 v2, 0xb7

    if-ne p1, v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_6

    .line 347
    sget-object v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne v0, v2, :cond_2

    .line 348
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    .local v2, "u":Ljava/lang/Object;
    goto :goto_0

    .line 350
    .end local v2    # "u":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 352
    .restart local v2    # "u":Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 353
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    .line 354
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v4, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 358
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    .line 359
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v4, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 364
    .end local v0    # "t":Ljava/lang/Object;
    .end local v2    # "u":Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_6
    invoke-direct {p0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 365
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 366
    return-void
.end method

.method private execute(IILjava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "iarg"    # I
    .param p3, "sarg"    # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 582
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 941
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 942
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 936
    :pswitch_1
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 937
    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 938
    goto/16 :goto_0

    .line 932
    :pswitch_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 934
    goto/16 :goto_0

    .line 902
    :pswitch_3
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 903
    packed-switch p2, :pswitch_data_1

    .line 927
    const-string v0, "[J"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 928
    goto/16 :goto_0

    .line 917
    :pswitch_4
    const-string v0, "[I"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 918
    goto/16 :goto_0

    .line 914
    :pswitch_5
    const-string v0, "[S"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 915
    goto/16 :goto_0

    .line 911
    :pswitch_6
    const-string v0, "[B"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 912
    goto/16 :goto_0

    .line 923
    :pswitch_7
    const-string v0, "[D"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 924
    goto/16 :goto_0

    .line 920
    :pswitch_8
    const-string v0, "[F"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 921
    goto/16 :goto_0

    .line 908
    :pswitch_9
    const-string v0, "[C"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 909
    goto/16 :goto_0

    .line 905
    :pswitch_a
    const-string v0, "[Z"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 906
    goto/16 :goto_0

    .line 899
    :pswitch_b
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 900
    goto/16 :goto_0

    .line 895
    :pswitch_c
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    .line 897
    goto/16 :goto_0

    .line 891
    :pswitch_d
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 892
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 893
    goto/16 :goto_0

    .line 888
    :pswitch_e
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 889
    goto/16 :goto_0

    .line 885
    :pswitch_f
    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 886
    goto/16 :goto_0

    .line 883
    :pswitch_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSR/RET are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :pswitch_11
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 879
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 880
    goto/16 :goto_0

    .line 872
    :pswitch_12
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 873
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 874
    goto/16 :goto_0

    .line 865
    :pswitch_13
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 866
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 867
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 868
    goto/16 :goto_0

    .line 860
    :pswitch_14
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 861
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 862
    goto/16 :goto_0

    .line 855
    :pswitch_15
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 856
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 857
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 858
    goto/16 :goto_0

    .line 851
    :pswitch_16
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 852
    goto/16 :goto_0

    .line 846
    :pswitch_17
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 847
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 848
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 849
    goto/16 :goto_0

    .line 839
    :pswitch_18
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 840
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 841
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 842
    goto/16 :goto_0

    .line 831
    :pswitch_19
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 832
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 833
    goto/16 :goto_0

    .line 820
    :pswitch_1a
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 821
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 822
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 823
    goto/16 :goto_0

    .line 809
    :pswitch_1b
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 810
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 811
    goto/16 :goto_0

    .line 789
    :pswitch_1c
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 790
    .local v0, "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 791
    .local v2, "t2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 792
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 793
    goto/16 :goto_0

    .line 777
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    :pswitch_1d
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 778
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 779
    .restart local v2    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 780
    .local v3, "t3":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v4

    .line 781
    .local v4, "t4":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 782
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 783
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 784
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 785
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 786
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 787
    goto/16 :goto_0

    .line 767
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    .end local v3    # "t3":Ljava/lang/Object;
    .end local v4    # "t4":Ljava/lang/Object;
    :pswitch_1e
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 768
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 769
    .restart local v2    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 770
    .restart local v3    # "t3":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 771
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 772
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 773
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 774
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 775
    goto/16 :goto_0

    .line 759
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    .end local v3    # "t3":Ljava/lang/Object;
    :pswitch_1f
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 760
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 761
    .restart local v2    # "t2":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 762
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 763
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 764
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 765
    goto/16 :goto_0

    .line 750
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    :pswitch_20
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 751
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 752
    .restart local v2    # "t2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 753
    .restart local v3    # "t3":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 755
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 756
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 757
    goto/16 :goto_0

    .line 743
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    .end local v3    # "t3":Ljava/lang/Object;
    :pswitch_21
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 744
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 745
    .restart local v2    # "t2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 746
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 747
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 748
    goto/16 :goto_0

    .line 738
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    :pswitch_22
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 739
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 740
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 741
    goto/16 :goto_0

    .line 735
    .end local v0    # "t1":Ljava/lang/Object;
    :pswitch_23
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 736
    goto/16 :goto_0

    .line 722
    :pswitch_24
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 723
    goto/16 :goto_0

    .line 703
    :pswitch_25
    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 704
    goto/16 :goto_0

    .line 699
    :pswitch_26
    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 700
    goto/16 :goto_0

    .line 682
    :pswitch_27
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 683
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 684
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 685
    add-int/lit8 v2, p2, 0x1

    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 686
    if-lez p2, :cond_4

    .line 687
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 688
    .restart local v2    # "t2":Ljava/lang/Object;
    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v2, v3, :cond_4

    .line 689
    :cond_1
    add-int/lit8 v3, p2, -0x1

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 671
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    :pswitch_28
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 672
    .restart local v0    # "t1":Ljava/lang/Object;
    invoke-direct {p0, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    .line 673
    if-lez p2, :cond_4

    .line 674
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 675
    .restart local v2    # "t2":Ljava/lang/Object;
    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v2, v3, :cond_2

    sget-object v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v2, v3, :cond_4

    .line 676
    :cond_2
    add-int/lit8 v3, p2, -0x1

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 660
    .end local v0    # "t1":Ljava/lang/Object;
    .end local v2    # "t2":Ljava/lang/Object;
    :pswitch_29
    invoke-direct {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 661
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 662
    .restart local v0    # "t1":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 663
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_3
    const-string v2, "java/lang/Object"

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 667
    goto/16 :goto_0

    .line 655
    .end local v0    # "t1":Ljava/lang/Object;
    :pswitch_2a
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 656
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 657
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 658
    goto :goto_0

    .line 650
    :pswitch_2b
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 651
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 652
    goto :goto_0

    .line 645
    :pswitch_2c
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 646
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 647
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 648
    goto :goto_0

    .line 640
    :pswitch_2d
    invoke-direct {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 641
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 642
    goto :goto_0

    .line 633
    :pswitch_2e
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 634
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 635
    goto :goto_0

    .line 629
    :pswitch_2f
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 630
    goto :goto_0

    .line 623
    :pswitch_30
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 624
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 625
    goto :goto_0

    .line 619
    :pswitch_31
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 620
    goto :goto_0

    .line 613
    :pswitch_32
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 614
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 615
    goto :goto_0

    .line 609
    :pswitch_33
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 610
    goto :goto_0

    .line 598
    :pswitch_34
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->NULL:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 599
    goto :goto_0

    .line 596
    :pswitch_35
    nop

    .line 945
    :cond_4
    :goto_0
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 946
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2f
        :pswitch_2e
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_1b
        :pswitch_17
        :pswitch_1b
        :pswitch_17
        :pswitch_1b
        :pswitch_17
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1b
        :pswitch_19
        :pswitch_2a
        :pswitch_12
        :pswitch_15
        :pswitch_13
        :pswitch_1b
        :pswitch_2c
        :pswitch_19
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_11
        :pswitch_1b
        :pswitch_1b
        :pswitch_11
        :pswitch_11
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_35
        :pswitch_10
        :pswitch_10
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_35
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_12
        :pswitch_24
        :pswitch_1
        :pswitch_12
        :pswitch_24
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "local"    # I

    .line 494
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 495
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method private pop()Ljava/lang/Object;
    .locals 2

    .line 552
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pop(I)V
    .locals 4
    .param p1, "n"    # I

    .line 556
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 557
    .local v0, "size":I
    sub-int v1, v0, p1

    .line 558
    .local v1, "end":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 559
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 558
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 561
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 565
    .local v0, "c":C
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "n":I
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v2

    .line 568
    .local v2, "types":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 569
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 572
    .end local v1    # "n":I
    .end local v2    # "types":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;
    goto :goto_2

    :cond_1
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 575
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_2

    .line 573
    :cond_3
    :goto_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(I)V

    .line 577
    :goto_2
    return-void
.end method

.method private push(Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 509
    return-void
.end method

.method private pushDesc(Ljava/lang/String;)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;

    .line 512
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x28

    if-ne v1, v3, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 513
    .local v0, "index":I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 543
    if-nez v0, :cond_2

    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    :sswitch_0
    if-nez v0, :cond_1

    .line 536
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 540
    goto :goto_0

    .line 515
    :sswitch_1
    return-void

    .line 527
    :sswitch_2
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 528
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 529
    return-void

    .line 524
    :sswitch_3
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 525
    return-void

    .line 531
    :sswitch_4
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 532
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 533
    return-void

    .line 521
    :sswitch_5
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 522
    return-void

    .line 546
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 549
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x53 -> :sswitch_5
        0x56 -> :sswitch_1
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "local"    # I
    .param p2, "type"    # Ljava/lang/Object;

    .line 499
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 500
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 501
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private static visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .param p0, "n"    # I
    .param p1, "types"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 244
    aget-object v1, p1, v0

    .line 245
    .local v1, "type":Ljava/lang/Object;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    .line 247
    :cond_0
    sget-object v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v1    # "type":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 309
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 220
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 225
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 236
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-static {p2, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {p4, p5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    .line 238
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 239
    return-void

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitIincInsn(II)V
    .locals 2
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 446
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIincInsn(II)V

    .line 449
    :cond_0
    const/16 v0, 0x84

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 450
    return-void
.end method

.method public visitInsn(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 254
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 257
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 258
    const/16 v0, 0xac

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    .line 260
    :cond_2
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 261
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 263
    :cond_3
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 267
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    .line 270
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 375
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 376
    return-void

    .line 378
    :cond_1
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    .line 380
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 381
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 385
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 388
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 389
    const/16 v0, 0xa7

    if-ne p1, v0, :cond_1

    .line 390
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 391
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 393
    :cond_1
    return-void
.end method

.method public visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 397
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_1

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 403
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 3
    .param p1, "cst"    # Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 412
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 413
    return-void

    .line 415
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 416
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 417
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 418
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 419
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 420
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 421
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 422
    :cond_4
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 423
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 424
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 425
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 426
    const-string v0, "java/lang/String"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 427
    :cond_6
    instance-of v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    if-eqz v0, :cond_a

    .line 428
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getSort()I

    move-result v0

    .line 429
    .local v0, "sort":I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-ne v0, v2, :cond_7

    goto :goto_0

    .line 431
    :cond_7
    const/16 v2, 0xb

    if-ne v0, v2, :cond_8

    .line 432
    const-string v2, "java/lang/invoke/MethodType"

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 434
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 430
    :cond_9
    :goto_0
    const-string v2, "java/lang/Class"

    invoke-direct {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 436
    .end local v0    # "sort":I
    :goto_1
    goto :goto_2

    :cond_a
    instance-of v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;

    if-eqz v0, :cond_b

    .line 437
    const-string v0, "java/lang/invoke/MethodHandle"

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    .line 441
    :goto_2
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 442
    return-void

    .line 439
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 466
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 469
    :cond_0
    const/16 v0, 0xab

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 470
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 471
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 472
    return-void
.end method

.method public visitMaxs(II)V
    .locals 3
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 484
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 485
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    .line 486
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    .line 487
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxStack:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 489
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 319
    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 326
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    .line 327
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 476
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 479
    :cond_0
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 480
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 455
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 458
    :cond_0
    const/16 v0, 0xaa

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 459
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    .line 460
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    .line 461
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 283
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 284
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 286
    .local v0, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    .line 287
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 292
    .end local v0    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 293
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 299
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 275
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 278
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    .line 279
    return-void
.end method
