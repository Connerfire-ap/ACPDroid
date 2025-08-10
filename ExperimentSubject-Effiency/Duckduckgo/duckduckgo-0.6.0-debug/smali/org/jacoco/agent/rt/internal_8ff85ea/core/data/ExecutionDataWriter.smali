.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;
.super Ljava/lang/Object;
.source "ExecutionDataWriter.java"

# interfaces
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ISessionInfoVisitor;
.implements Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/IExecutionDataVisitor;


# static fields
.field public static final BLOCK_EXECUTIONDATA:B = 0x11t

.field public static final BLOCK_HEADER:B = 0x1t

.field public static final BLOCK_SESSIONINFO:B = 0x10t

.field public static final FORMAT_VERSION:C

.field public static final MAGIC_NUMBER:C = '\uc0c0'


# instance fields
.field protected final out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/16 v0, 0x1007

    sput-char v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->FORMAT_VERSION:C

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-direct {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    .line 61
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->writeHeader()V

    .line 62
    return-void
.end method

.method public static final getFileHeader()[B
    .locals 3

    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 72
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    const v1, 0xc0c0

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeChar(I)V

    .line 73
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    sget-char v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->FORMAT_VERSION:C

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeChar(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->flush()V

    .line 84
    return-void
.end method

.method public visitClassExecution(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;)V
    .locals 3
    .param p1, "data"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;

    .line 98
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->hasHits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 101
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionData;->getProbes()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeBooleanArray([Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public visitSessionInfo(Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 89
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeUTF(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;->getStartTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeLong(J)V

    .line 91
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/ExecutionDataWriter;->out:Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;

    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/data/SessionInfo;->getDumpTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
