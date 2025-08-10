.class Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;
.super Ljava/lang/Object;
.source "InterfaceFieldProbeArrayStrategy.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;


# static fields
.field private static final FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

.field private static final FRAME_STACK_ARRZ:[Ljava/lang/Object;


# instance fields
.field private final accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

.field private final classId:J

.field private final className:Ljava/lang/String;

.field private final probeCount:I

.field private seenClinit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[Z"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    .line 35
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classId"    # J
    .param p4, "probeCount"    # I
    .param p5, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->seenClinit:Z

    .line 47
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->classId:J

    .line 49
    iput p4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->probeCount:I

    .line 50
    iput-object p5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 51
    return-void
.end method

.method private createClinitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 12
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 136
    const/16 v1, 0x1008

    const-string v2, "<clinit>"

    const-string v3, "()V"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    .line 138
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 140
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->classId:J

    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    move v10, p2

    move-object v11, v0

    invoke-interface/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I

    move-result v1

    .line 145
    .local v1, "maxStack":I
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/16 v3, 0xb3

    const-string v4, "$jacocoData"

    const-string v5, "[Z"

    invoke-virtual {v0, v3, v2, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 151
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitEnd()V

    .line 152
    return-void
.end method

.method private createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V
    .locals 6
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;

    .line 93
    const/16 v1, 0x1019

    const-string v2, "$jacocoData"

    const-string v3, "[Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 96
    return-void
.end method

.method private createInitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 12
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 99
    const/16 v1, 0x100a

    const-string v2, "$jacocoInit"

    const-string v3, "()[Z"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    .line 102
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 105
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/16 v2, 0xb2

    const-string v3, "$jacocoData"

    const-string v4, "[Z"

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 113
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    .line 114
    .local v1, "alreadyInitialized":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/16 v2, 0xc7

    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 118
    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 119
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v7, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->classId:J

    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    move v10, p2

    move-object v11, v0

    invoke-interface/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I

    move-result v2

    .line 125
    .local v2, "size":I
    sget-object v9, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->FRAME_LOCALS_EMPTY:[Ljava/lang/Object;

    sget-object v11, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->FRAME_STACK_ARRZ:[Ljava/lang/Object;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 128
    const/16 v3, 0xb0

    invoke-virtual {v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 130
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 131
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitEnd()V

    .line 132
    return-void
.end method


# virtual methods
.method public addMembers(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 1
    .param p1, "cv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "probeCount"    # I

    .line 85
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->createDataField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->createInitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 87
    iget-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->seenClinit:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->createClinitMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 90
    :cond_0
    return-void
.end method

.method public storeInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;ZI)I
    .locals 9
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "clinit"    # Z
    .param p3, "variable"    # I

    .line 55
    const/4 v0, 0x1

    const/16 v1, 0x3a

    if-eqz p2, :cond_0

    .line 56
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->accessorGenerator:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    iget-wide v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->classId:J

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    iget v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->probeCount:I

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;->generateDataAccessor(JLjava/lang/String;ILorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)I

    move-result v2

    .line 61
    .local v2, "maxStack":I
    const/16 v3, 0x59

    invoke-virtual {p1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 66
    const/16 v3, 0xb3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const-string v5, "$jacocoData"

    const-string v6, "[Z"

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 73
    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->seenClinit:Z

    .line 74
    const/4 v0, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 76
    .end local v2    # "maxStack":I
    :cond_0
    const/16 v4, 0xb8

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;->className:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v6, "$jacocoInit"

    const-string v7, "()[Z"

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p1, v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 80
    return v0
.end method
