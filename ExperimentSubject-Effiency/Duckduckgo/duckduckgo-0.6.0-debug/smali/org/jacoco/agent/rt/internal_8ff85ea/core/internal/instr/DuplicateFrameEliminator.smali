.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
.source "DuplicateFrameEliminator.java"


# instance fields
.field private instruction:Z


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 29
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;-><init>(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 31
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 70
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "nLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "nStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 36
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 38
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method public visitIincInsn(II)V
    .locals 1
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 102
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIincInsn(II)V

    .line 103
    return-void
.end method

.method public visitInsn(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 45
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 46
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 51
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    .line 52
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 84
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 91
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 96
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 116
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 117
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 77
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 122
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .param p4, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 109
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 110
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 63
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->instruction:Z

    .line 57
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;->mv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 58
    return-void
.end method
