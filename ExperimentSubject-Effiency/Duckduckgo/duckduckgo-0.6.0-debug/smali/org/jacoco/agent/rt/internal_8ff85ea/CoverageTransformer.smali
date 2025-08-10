.class public Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;
.super Ljava/lang/Object;
.source "CoverageTransformer.java"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# static fields
.field private static final AGENT_PREFIX:Ljava/lang/String;


# instance fields
.field private final classFileDumper:Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;

.field private final exclClassloader:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

.field private final excludes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

.field private final inclBootstrapClasses:Z

.field private final inclNoLocationClasses:Z

.field private final includes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

.field private final instrumenter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;

.field private final logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-class v0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->AGENT_PREFIX:Ljava/lang/String;

    .line 34
    .end local v0    # "name":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V
    .locals 2
    .param p1, "runtime"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;
    .param p2, "options"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
    .param p3, "logger"    # Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IExecutionDataAccessorGenerator;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->instrumenter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;

    .line 65
    iput-object p3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    .line 67
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getIncludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->includes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    .line 68
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getExcludes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->toVMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->excludes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    .line 69
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getExclClassloader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->exclClassloader:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    .line 70
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;

    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getClassDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->classFileDumper:Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;

    .line 71
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getInclBootstrapClasses()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->inclBootstrapClasses:Z

    .line 72
    invoke-virtual {p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getInclNoLocationClasses()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->inclNoLocationClasses:Z

    .line 73
    return-void
.end method

.method private hasSourceLocation(Ljava/security/ProtectionDomain;)Z
    .locals 3
    .param p1, "protectionDomain"    # Ljava/security/ProtectionDomain;

    .line 144
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 145
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v1

    .line 148
    .local v1, "codeSource":Ljava/security/CodeSource;
    if-nez v1, :cond_1

    .line 149
    return v0

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static toVMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "srcName"    # Ljava/lang/String;

    .line 155
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method filter(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;)Z
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;

    .line 115
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    iget-boolean v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->inclBootstrapClasses:Z

    if-nez v1, :cond_2

    .line 117
    return v0

    .line 120
    :cond_0
    iget-boolean v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->inclNoLocationClasses:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->hasSourceLocation(Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->exclClassloader:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    return v0

    .line 128
    :cond_2
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->AGENT_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->includes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->excludes:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;

    invoke-virtual {v1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/WildcardMatcher;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "classname"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "classfileBuffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/IllegalClassFormatException;
        }
    .end annotation

    .line 81
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 82
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->filter(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    return-object v0

    .line 90
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->classFileDumper:Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;

    invoke-virtual {v0, p2, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/ClassFileDumper;->dump(Ljava/lang/String;[B)V

    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->instrumenter:Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;

    invoke-virtual {v0, p5, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/instrument/IllegalClassFormatException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/instrument/IllegalClassFormatException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "wrapper":Ljava/lang/instrument/IllegalClassFormatException;
    invoke-virtual {v1, v0}, Ljava/lang/instrument/IllegalClassFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 97
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-interface {v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 98
    throw v1
.end method
