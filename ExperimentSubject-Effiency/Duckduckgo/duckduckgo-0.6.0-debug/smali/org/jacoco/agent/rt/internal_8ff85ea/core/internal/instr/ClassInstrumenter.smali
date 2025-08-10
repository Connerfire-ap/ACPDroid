.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;
.source "ClassInstrumenter.java"


# instance fields
.field private className:Ljava/lang/String;

.field private final probeArrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;


# direct methods
.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 0
    .param p1, "probeArrayStrategy"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;
    .param p2, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 40
    invoke-direct {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 41
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    .line 42
    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    .line 49
    invoke-super/range {p0 .. p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
    .locals 1
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # [Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/MethodProbesVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InstrSupport;->assertNotInstrumented(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    .line 68
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_0
    new-instance v6, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;

    invoke-direct {v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/DuplicateFrameEliminator;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 72
    .local v6, "frameEliminator":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;

    iget-object v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;)V

    .line 74
    .local v1, "probeVariableInserter":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeInserter;
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;

    invoke-direct {v2, v1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/MethodInstrumenter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeInserter;)V

    return-object v2
.end method

.method public visitTotalProbeCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->probeArrayStrategy:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassInstrumenter;->cv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    invoke-interface {v0, v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;->addMembers(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 81
    return-void
.end method
