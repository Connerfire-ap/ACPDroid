.class Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput$1;
.super Ljava/lang/Object;
.source "TcpClientOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;->startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;->connection:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;->access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;
    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;->access$100(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;)Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
