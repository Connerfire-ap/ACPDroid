.class Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$1;
.super Ljava/lang/Thread;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->getInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$agent:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$1;->val$agent:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$1;->val$agent:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->shutdown()V

    .line 55
    return-void
.end method
