.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/PreMain;
.super Ljava/lang/Object;
.source "PreMain.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static createRuntime(Ljava/lang/instrument/Instrumentation;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;
    .locals 1
    .param p0, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    const-string v0, "java/util/UUID"

    invoke-static {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/ModifiedSystemClassRuntime;->createFor(Ljava/lang/instrument/Instrumentation;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;

    move-result-object v0

    return-object v0
.end method

.method public static premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .locals 5
    .param p0, "options"    # Ljava/lang/String;
    .param p1, "inst"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    invoke-direct {v0, p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "agentOptions":Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->getInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    move-result-object v1

    .line 47
    .local v1, "agent":Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/PreMain;->createRuntime(Ljava/lang/instrument/Instrumentation;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;

    move-result-object v2

    .line 48
    .local v2, "runtime":Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->getData()Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;->startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V

    .line 49
    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;

    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-direct {v3, v2, v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/CoverageTransformer;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRuntime;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V

    invoke-interface {p1, v3}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 51
    return-void
.end method
