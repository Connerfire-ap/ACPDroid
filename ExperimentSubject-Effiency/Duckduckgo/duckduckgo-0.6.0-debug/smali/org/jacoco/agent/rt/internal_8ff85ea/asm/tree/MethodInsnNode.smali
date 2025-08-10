.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
.source "MethodInsnNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public itf:Z

.field public name:Ljava/lang/String;

.field public owner:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 108
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 109
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    .line 112
    iput-boolean p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->itf:Z

    .line 113
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 133
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->opcode:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->itf:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->acceptAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 135
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 7
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

    .line 139
    .local p1, "labels":Ljava/util/Map;, "Ljava/util/Map<Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;>;"
    new-instance v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->opcode:I

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    iget-boolean v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->itf:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public getType()I
    .locals 1

    .line 128
    const/4 v0, 0x5

    return v0
.end method

.method public setOpcode(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 123
    iput p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/MethodInsnNode;->opcode:I

    .line 124
    return-void
.end method
