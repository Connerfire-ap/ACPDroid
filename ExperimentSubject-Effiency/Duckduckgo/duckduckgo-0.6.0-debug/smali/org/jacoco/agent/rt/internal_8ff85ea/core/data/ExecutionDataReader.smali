.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;
.super Ljava/lang/Object;
.source "ExecutionDataReader.java"


# instance fields
.field private executionDataVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

.field private firstBlock:Z

.field protected final in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

.field private sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;

    .line 31
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->firstBlock:Z

    .line 44
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    .line 45
    return-void
.end method

.method private readExecutionData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v0

    .line 148
    .local v0, "id":J
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readBooleanArray()[Z

    move-result-object v3

    .line 150
    .local v3, "probes":[Z
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

    new-instance v5, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;-><init>(JLjava/lang/String;[Z)V

    invoke-interface {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;->visitClassExecution(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;)V

    .line 152
    return-void

    .line 145
    .end local v0    # "id":J
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "probes":[Z
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No execution data visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readChar()C

    move-result v0

    const v1, 0xc0c0

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readChar()C

    move-result v0

    .line 128
    .local v0, "version":C
    sget-char v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->FORMAT_VERSION:C

    if-ne v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IncompatibleExecDataVersionException;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IncompatibleExecDataVersionException;-><init>(I)V

    throw v1

    .line 125
    .end local v0    # "version":C
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid execution data file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionInfo()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v7

    .line 139
    .local v7, "start":J
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->readLong()J

    move-result-wide v9

    .line 140
    .local v9, "dump":J
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;

    new-instance v12, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;

    move-object v1, v12

    move-object v2, v0

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;->visitSessionInfo(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;)V

    .line 141
    return-void

    .line 135
    .end local v0    # "id":Ljava/lang/String;
    .end local v7    # "start":J
    .end local v9    # "dump":J
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No session info visitor."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public read()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IncompatibleExecDataVersionException;
        }
    .end annotation

    .line 83
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->in:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataInput;->read()I

    move-result v0

    .line 84
    .local v0, "i":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 85
    return v2

    .line 87
    :cond_0
    int-to-byte v1, v0

    .line 88
    .local v1, "type":B
    iget-boolean v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->firstBlock:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid execution data file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->firstBlock:Z

    .line 92
    .end local v0    # "i":I
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->readBlock(B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    return v4

    .line 92
    :cond_3
    goto :goto_0
.end method

.method protected readBlock(B)Z
    .locals 4
    .param p1, "blocktype"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 118
    new-instance v1, Ljava/io/IOException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Unknown block type %x."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :sswitch_0
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->readExecutionData()V

    .line 116
    return v0

    .line 112
    :sswitch_1
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->readSessionInfo()V

    .line 113
    return v0

    .line 109
    :sswitch_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->readHeader()V

    .line 110
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public setExecutionDataVisitor(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

    .line 64
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->executionDataVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;

    .line 65
    return-void
.end method

.method public setSessionInfoVisitor(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;

    .line 54
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataReader;->sessionInfoVisitor:Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;

    .line 55
    return-void
.end method
