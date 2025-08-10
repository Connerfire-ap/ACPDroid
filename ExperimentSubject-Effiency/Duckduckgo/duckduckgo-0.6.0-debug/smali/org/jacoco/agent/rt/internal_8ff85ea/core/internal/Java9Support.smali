.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;
.super Ljava/lang/Object;
.source "Java9Support.java"


# static fields
.field public static final V1_9:I = 0x35


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static downgrade([B)[B
    .locals 3
    .param p0, "b"    # [B

    .line 99
    array-length v0, p0

    new-array v0, v0, [B

    .line 100
    .local v0, "result":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    const/4 v1, 0x6

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->putShort([BII)V

    .line 102
    return-object v0
.end method

.method public static downgradeIfRequired([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .line 88
    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->isPatchRequired([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->downgrade([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static isPatchRequired([B)Z
    .locals 2
    .param p0, "buffer"    # [B

    .line 76
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->readShort([BI)S

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static putShort([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 60
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 61
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 62
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-eqz p0, :cond_1

    .line 47
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 48
    .local v0, "buf":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 51
    .local v2, "r":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 52
    nop

    .line 56
    .end local v2    # "r":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 54
    .restart local v2    # "r":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 55
    .end local v2    # "r":I
    goto :goto_0

    .line 45
    .end local v0    # "buf":[B
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static readShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 65
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static upgrade([B)V
    .locals 2
    .param p0, "b"    # [B

    .line 112
    const/4 v0, 0x6

    const/16 v1, 0x35

    invoke-static {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/internal/Java9Support;->putShort([BII)V

    .line 113
    return-void
.end method
