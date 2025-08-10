.class public Lio/fabric/sdk/android/services/network/HttpRequest$Base64;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64"
.end annotation


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final _STANDARD_ALPHABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .local v0, "bytes":[B
    goto :goto_0

    .line 445
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 446
    .restart local v0    # "bytes":[B
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 448
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encode3to4([BII[BI)[B
    .locals 5
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I

    .line 402
    sget-object v0, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->_STANDARD_ALPHABET:[B

    .line 404
    .local v0, "ALPHABET":[B
    const/4 v1, 0x0

    if-lez p2, :cond_0

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_2
    or-int/2addr v1, v2

    .line 408
    .local v1, "inBuff":I
    const/16 v2, 0x3d

    packed-switch p2, :pswitch_data_0

    .line 431
    return-object p3

    .line 410
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 411
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 412
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 413
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 414
    return-object p3

    .line 417
    :pswitch_1
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 418
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 419
    add-int/lit8 v3, p4, 0x2

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 420
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 421
    return-object p3

    .line 424
    :pswitch_2
    ushr-int/lit8 v3, v1, 0x12

    aget-byte v3, v0, v3

    aput-byte v3, p3, p4

    .line 425
    add-int/lit8 v3, p4, 0x1

    ushr-int/lit8 v4, v1, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v0, v4

    aput-byte v4, p3, v3

    .line 426
    add-int/lit8 v3, p4, 0x2

    aput-byte v2, p3, v3

    .line 427
    add-int/lit8 v3, p4, 0x3

    aput-byte v2, p3, v3

    .line 428
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .line 461
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encodeBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 476
    invoke-static {p0, p1, p2}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encodeBytesToBytes([BII)[B

    move-result-object v0

    .line 478
    .local v0, "encoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static encodeBytesToBytes([BII)[B
    .locals 9
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 500
    if-eqz p0, :cond_7

    .line 503
    if-ltz p1, :cond_6

    .line 506
    if-ltz p2, :cond_5

    .line 509
    add-int v0, p1, p2

    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-gt v0, v1, :cond_4

    .line 515
    div-int/lit8 v0, p2, 0x3

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v5, p2, 0x3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 517
    .local v0, "encLen":I
    new-array v1, v0, [B

    .line 519
    .local v1, "outBuff":[B
    const/4 v5, 0x0

    .line 520
    .local v5, "d":I
    const/4 v6, 0x0

    .line 521
    .local v6, "e":I
    add-int/lit8 v7, p2, -0x2

    .line 522
    .local v7, "len2":I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 523
    add-int v8, v5, p1

    invoke-static {p0, v8, v4, v1, v6}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encode3to4([BII[BI)[B

    .line 522
    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 525
    :cond_1
    if-ge v5, p2, :cond_2

    .line 526
    add-int v4, v5, p1

    sub-int v8, p2, v5

    invoke-static {p0, v4, v8, v1, v6}, Lio/fabric/sdk/android/services/network/HttpRequest$Base64;->encode3to4([BII[BI)[B

    .line 527
    add-int/lit8 v6, v6, 0x4

    .line 530
    :cond_2
    array-length v4, v1

    sub-int/2addr v4, v2

    if-gt v6, v4, :cond_3

    .line 531
    new-array v2, v6, [B

    .line 532
    .local v2, "finalOut":[B
    invoke-static {v1, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    return-object v2

    .line 535
    .end local v2    # "finalOut":[B
    :cond_3
    return-object v1

    .line 510
    .end local v0    # "encLen":I
    .end local v1    # "outBuff":[B
    .end local v5    # "d":I
    .end local v6    # "e":I
    .end local v7    # "len2":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string v2, "Cannot have offset of %d and length of %d with array of length %d"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have negative offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
