.class public Lorg/jacoco/agent/rt/internal_8ff85ea/output/NoneOutput;
.super Ljava/lang/Object;
.source "NoneOutput.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 0

    .line 32
    return-void
.end method

.method public final startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V
    .locals 0
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
    .param p2, "data"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    .line 24
    return-void
.end method

.method public writeExecutionData(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .line 28
    return-void
.end method
