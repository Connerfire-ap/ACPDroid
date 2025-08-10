.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
.source "IntInsnNode.java"


# instance fields
.field public operand:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 58
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 59
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->operand:I

    .line 60
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 2
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 80
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->opcode:I

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->operand:I

    invoke-virtual {p1, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 82
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 3
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

    .line 86
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;>;"
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->opcode:I

    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->operand:I

    invoke-direct {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->cloneAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 70
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/IntInsnNode;->opcode:I

    .line 71
    return-void
.end method
