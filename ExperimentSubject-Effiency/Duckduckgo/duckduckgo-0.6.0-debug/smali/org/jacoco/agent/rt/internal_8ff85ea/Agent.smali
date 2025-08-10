.class public Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Lorg/jacoco/agent/rt/IAgent;


# static fields
.field private static singleton:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;


# instance fields
.field private final data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

.field private jmxRegistration:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

.field private final options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

.field private output:Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V
    .locals 1
    .param p1, "options"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
    .param p2, "logger"    # Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    .line 97
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    .line 98
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    .line 99
    return-void
.end method

.method private createSessionId()Ljava/lang/String;
    .locals 3

    .line 172
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v0, "host":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "host":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 176
    .restart local v0    # "host":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "unknownhost"

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AbstractRuntime;->createRandomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->singleton:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 74
    monitor-exit v0

    return-object v1

    .line 72
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JaCoCo agent not started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;)Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    .locals 4
    .param p0, "options"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    const-class v0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->singleton:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    sget-object v2, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->SYSTEM_ERR:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-direct {v1, p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V

    .line 50
    .local v1, "agent":Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->startup()V

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$1;

    invoke-direct {v3, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$1;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 57
    sput-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->singleton:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;

    .line 59
    .end local v1    # "agent":Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    :cond_0
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->singleton:Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "options":Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method createAgentOutput()Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    .line 155
    .local v0, "controllerType":Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent$2;->$SwitchMap$org$jacoco$core$runtime$AgentOptions$OutputMode:[I

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 163
    :pswitch_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/output/NoneOutput;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/NoneOutput;-><init>()V

    return-object v1

    .line 161
    :pswitch_1
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-direct {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpClientOutput;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V

    return-object v1

    .line 159
    :pswitch_2
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-direct {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/TcpServerOutput;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;)V

    return-object v1

    .line 157
    :pswitch_3
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/output/FileOutput;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/FileOutput;-><init>()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Z)V
    .locals 1
    .param p1, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->output:Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;

    invoke-interface {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;->writeExecutionData(Z)V

    .line 213
    return-void
.end method

.method public getData()Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    return-object v0
.end method

.method public getExecutionData(Z)[B
    .locals 3
    .param p1, "reset"    # Z

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v1, "writer":Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-virtual {v2, v1, v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->collect(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "writer":Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;
    nop

    .line 208
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 184
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/JaCoCo;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->reset()V

    .line 197
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getDumpOnExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->output:Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;->writeExecutionData(Z)V

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->output:Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;

    invoke-interface {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;->shutdown()V

    .line 140
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->jmxRegistration:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startup()V
    .locals 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "sessionId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->createSessionId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-virtual {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;->setSessionId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->createAgentOutput()Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;

    move-result-object v1

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->output:Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;

    .line 122
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->data:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;

    invoke-interface {v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/output/IAgentOutput;->startup(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RuntimeData;)V

    .line 123
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->options:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getJmx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/JmxRegistration;

    invoke-direct {v1, p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/JmxRegistration;-><init>(Lorg/jacoco/agent/rt/IAgent;)V

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->jmxRegistration:Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "sessionId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/Agent;->logger:Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;

    invoke-interface {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/IExceptionLogger;->logExeption(Ljava/lang/Exception;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
