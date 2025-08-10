.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;
.super Ljava/lang/Object;
.source "LocalProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

.field private final classId:J

.field private final className:Ljava/lang/String;

.field private final probeCount:I


# direct methods
.method constructor <init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classId"    # J
    .param p4, "probeCount"    # I
    .param p5, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->className:Ljava/lang/String;

    .line 36
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->classId:J

    .line 37
    iput p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->probeCount:I

    .line 38
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 39
    return-void
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "delegate"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 51
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ZI)I
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "clinit"    # Z
    .param p3, "variable"    # I

    .line 43
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->classId:J

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->className:Ljava/lang/String;

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;->probeCount:I

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I

    move-result v0

    .line 45
    .local v0, "maxStack":I
    const/16 v1, 0x3a

    invoke-virtual {p1, v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 46
    return v0
.end method
