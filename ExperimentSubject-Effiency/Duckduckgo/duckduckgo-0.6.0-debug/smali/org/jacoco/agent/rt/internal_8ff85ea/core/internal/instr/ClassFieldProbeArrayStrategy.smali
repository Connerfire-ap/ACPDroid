.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;
.super Ljava/lang/Object;
.source "ClassFieldProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;


# static fields
.field private static final FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

.field private static final FRAME_STACK_ARRZ:[Ljava/lang/Object;


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

.field private final classId:J

.field private final className:Ljava/lang/String;

.field private final withFrames:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Z"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JZLorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classId"    # J
    .param p4, "withFrames"    # Z
    .param p5, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->className:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->classId:J

    .line 47
    iput-boolean p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->withFrames:Z

    .line 48
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 49
    return-void
.end method

.method private createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 6
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 66
    const/16 v1, 0x108a

    const-string v2, "$jacocoData"

    const-string v3, "[Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 68
    return-void
.end method

.method private createInitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 12
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 71
    const/16 v1, 0x100a

    const-string v2, "$jacocoInit"

    const-string v3, "()[Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    .line 74
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 77
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/16 v2, 0xb2

    const-string v3, "$jacocoData"

    const-string v4, "[Z"

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 85
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 86
    .local v1, "alreadyInitialized":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/16 v2, 0xc7

    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 90
    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 91
    invoke-direct {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->genInitializeDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;I)I

    move-result v2

    .line 96
    .local v2, "size":I
    iget-boolean v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->withFrames:Z

    if-eqz v3, :cond_0

    .line 97
    const/4 v7, -0x1

    const/4 v8, 0x0

    sget-object v9, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    const/4 v10, 0x1

    sget-object v11, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 101
    const/16 v3, 0xb0

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 103
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 104
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitEnd()V

    .line 105
    return-void
.end method

.method private genInitializeDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;I)I
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "probeCount"    # I

    .line 118
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->classId:J

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->className:Ljava/lang/String;

    move v4, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I

    move-result v0

    .line 123
    .local v0, "size":I
    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 128
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/16 v2, 0xb3

    const-string v3, "$jacocoData"

    const-string v4, "[Z"

    invoke-virtual {p1, v2, v1, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 0
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 61
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->createInitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 63
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ZI)I
    .locals 6
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "clinit"    # Z
    .param p3, "variable"    # I

    .line 53
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/16 v1, 0xb8

    const-string v3, "$jacocoInit"

    const-string v4, "()[Z"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    const/16 v0, 0x3a

    invoke-virtual {p1, v0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
