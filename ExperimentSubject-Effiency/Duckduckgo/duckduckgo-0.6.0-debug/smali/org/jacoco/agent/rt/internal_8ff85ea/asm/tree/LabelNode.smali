.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
.source "LabelNode.java"


# instance fields
.field private label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 49
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 50
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 51
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 67
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 68
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 1
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

    .line 72
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLabel()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 55
    const/16 v0, 0x8

    return v0
.end method

.method public resetLabel()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->label:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 77
    return-void
.end method
