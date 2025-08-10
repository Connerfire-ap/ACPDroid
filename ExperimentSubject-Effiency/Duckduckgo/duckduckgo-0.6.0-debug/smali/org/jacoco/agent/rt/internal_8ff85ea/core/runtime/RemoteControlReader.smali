.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;
.source "RemoteControlReader.java"


# instance fields
.field private remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private readDumpCommand()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v0

    .line 66
    .local v0, "dump":Z
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readBoolean()Z

    move-result v1

    .line 67
    .local v1, "reset":Z
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;

    invoke-interface {v2, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;->visitDumpCommand(ZZ)V

    .line 68
    return-void

    .line 63
    .end local v0    # "dump":Z
    .end local v1    # "reset":Z
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No remote command visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected readBlock(B)Z
    .locals 1
    .param p1, "blockid"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 47
    invoke-super {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->readBlock(B)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->readDumpCommand()V

    .line 43
    const/4 v0, 0x1

    return v0

    .line 45
    :sswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public setRemoteCommandVisitor(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;

    .line 58
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/RemoteControlReader;->remoteCommandVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/IRemoteCommandVisitor;

    .line 59
    return-void
.end method
