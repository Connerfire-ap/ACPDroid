.class public Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;
.super Ljava/io/DataOutputStream;
.source "CompactDataOutput.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 33
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method public writeBooleanArray([Z)V
    .locals 7
    .param p1, "value"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeVarInt(I)V

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "buffer":I
    const/4 v1, 0x0

    .line 68
    .local v1, "bufferSize":I
    move-object v2, p1

    .local v2, "arr$":[Z
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-boolean v5, v2, v4

    .line 69
    .local v5, "b":Z
    if-eqz v5, :cond_0

    .line 70
    const/4 v6, 0x1

    shl-int/2addr v6, v1

    or-int/2addr v0, v6

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 74
    const/4 v0, 0x0

    .line 75
    const/4 v1, 0x0

    .line 68
    .end local v5    # "b":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "arr$":[Z
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    if-lez v1, :cond_3

    .line 79
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 81
    :cond_3
    return-void
.end method

.method public writeVarInt(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    goto :goto_0

    .line 50
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeByte(I)V

    .line 51
    ushr-int/lit8 v0, p1, 0x7

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/data/CompactDataOutput;->writeVarInt(I)V

    .line 53
    :goto_0
    return-void
.end method
