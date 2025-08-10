.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
.source "FrameNode.java"


# instance fields
.field public local:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 82
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 111
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->type:I

    .line 112
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    .line 125
    :pswitch_1
    goto :goto_0

    .line 122
    :pswitch_2
    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 123
    goto :goto_0

    .line 119
    :pswitch_3
    invoke-static {p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 120
    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 116
    invoke-static {p4, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 117
    nop

    .line 130
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static asArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 200
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    .local v0, "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 202
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-eqz v3, :cond_0

    .line 204
    move-object v3, v2

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    .line 206
    :cond_0
    aput-object v2, v0, v1

    .line 201
    .end local v2    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static asList(I[Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "n"    # I
    .param p1, "o"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 145
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 159
    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 156
    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 153
    goto :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 149
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    .line 148
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 150
    nop

    .line 164
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;)",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    .line 168
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;-><init>()V

    .line 169
    .local v0, "clone":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->type:I

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->type:I

    .line 170
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "l":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    :cond_0
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v2    # "l":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 182
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 183
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 184
    .local v2, "s":Ljava/lang/Object;
    instance-of v3, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-eqz v3, :cond_2

    .line 185
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 187
    :cond_2
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v2    # "s":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 134
    const/16 v0, 0xe

    return v0
.end method
