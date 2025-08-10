.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeArrayStrategyFactory;
.super Ljava/lang/Object;
.source "ProbeArrayStrategyFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static createFor(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/IProbeArrayStrategy;
    .locals 17
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;
    .param p1, "accessorGenerator"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;

    .line 43
    invoke-virtual/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, "className":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeArrayStrategyFactory;->getVersion(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)I

    move-result v13

    .line 45
    .local v13, "version":I
    move-object/from16 v14, p0

    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CRC64;->checksum([B)J

    move-result-wide v15

    .line 46
    .local v15, "classId":J
    const/16 v0, 0x32

    if-lt v13, v0, :cond_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 48
    .local v10, "withFrames":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeArrayStrategyFactory;->isInterface(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeArrayStrategyFactory;->getProbeCounter(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;

    move-result-object v6

    .line 50
    .local v6, "counter":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;
    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/NoneProbeArrayStrategy;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/NoneProbeArrayStrategy;-><init>()V

    return-object v0

    .line 53
    :cond_1
    const/16 v0, 0x34

    if-lt v13, v0, :cond_2

    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;->hasMethods()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;

    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;->getCount()I

    move-result v4

    move-object v0, v7

    move-object v1, v12

    move-wide v2, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/InterfaceFieldProbeArrayStrategy;-><init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V

    return-object v7

    .line 57
    :cond_2
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;

    invoke-virtual {v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;->getCount()I

    move-result v4

    move-object v0, v7

    move-object v1, v12

    move-wide v2, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/LocalProbeArrayStrategy;-><init>(Ljava/lang/String;JILorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V

    return-object v7

    .line 61
    .end local v6    # "counter":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;
    :cond_3
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;

    move-object v6, v0

    move-object v7, v12

    move-wide v8, v15

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ClassFieldProbeArrayStrategy;-><init>(Ljava/lang/String;JZLorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V

    return-object v0
.end method

.method private static getProbeCounter(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;
    .locals 3
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    .line 75
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;-><init>()V

    .line 76
    .local v0, "counter":Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/instr/ProbeCounter;
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/flow/ClassProbesVisitor;Z)V

    invoke-virtual {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V

    .line 77
    return-object v0
.end method

.method private static getVersion(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)I
    .locals 1
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    .line 71
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v0

    return v0
.end method

.method private static isInterface(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;)Z
    .locals 1
    .param p0, "reader"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    .line 67
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->getAccess()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
