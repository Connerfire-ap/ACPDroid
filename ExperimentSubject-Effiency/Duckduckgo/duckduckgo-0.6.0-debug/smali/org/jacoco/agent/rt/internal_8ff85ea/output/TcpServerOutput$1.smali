.class Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;
.super Ljava/lang/Object;
.source "TcpServerOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

.field final synthetic val$data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->val$data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 56
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->val$data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-direct {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;-><init>(Ljava/net/Socket;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V

    # setter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;
    invoke-static {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$102(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;)Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;

    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;->init()V

    .line 63
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->connection:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$100(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpConnection;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$000(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput$1;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    # getter for: Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;
    invoke-static {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;->access$200(Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;)Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method
