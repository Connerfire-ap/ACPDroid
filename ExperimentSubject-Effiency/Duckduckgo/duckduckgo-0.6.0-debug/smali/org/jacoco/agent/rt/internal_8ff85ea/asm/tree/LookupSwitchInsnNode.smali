.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
.source "LookupSwitchInsnNode.java"


# instance fields
.field public dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

.field public keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V
    .locals 3
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 77
    const/16 v0, 0xab

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 78
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p2

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, p3

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 82
    if-eqz p2, :cond_2

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    .end local v0    # "i":I
    :cond_2
    if-eqz p3, :cond_3

    .line 88
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 4
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 99
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 100
    .local v0, "keys":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 104
    .local v1, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 105
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 109
    return-void
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

    .line 113
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-static {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->clone(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    .line 114
    invoke-static {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->clone(Ljava/util/List;Ljava/util/Map;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;)V

    .line 115
    .local v0, "clone":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->keys:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LookupSwitchInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 94
    const/16 v0, 0xc

    return v0
.end method
