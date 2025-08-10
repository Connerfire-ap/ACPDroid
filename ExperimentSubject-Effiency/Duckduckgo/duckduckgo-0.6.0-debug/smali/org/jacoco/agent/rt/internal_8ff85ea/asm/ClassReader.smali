.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field static final ANNOTATIONS:Z = true

.field static final EXPAND_ASM_INSNS:I = 0x100

.field public static final EXPAND_FRAMES:I = 0x8

.field static final FRAMES:Z = true

.field static final RESIZE:Z = true

.field static final SIGNATURES:Z = true

.field public static final SKIP_CODE:I = 0x1

.field public static final SKIP_DEBUG:I = 0x2

.field public static final SKIP_FRAMES:I = 0x4

.field static final WRITER:Z = true


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    .line 440
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 451
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(Ljava/io/InputStream;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([B)V

    .line 454
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 168
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;-><init>([BII)V

    .line 169
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 184
    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v0

    const/16 v1, 0x34

    if-gt v0, v1, :cond_2

    .line 188
    add-int/lit8 v0, p2, 0x8

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    .line 189
    array-length v0, v0

    .line 190
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "max":I
    add-int/lit8 v2, p2, 0xa

    .line 193
    .local v2, "index":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 194
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v4, v3

    .line 196
    aget-byte v4, p1, v2

    packed-switch v4, :pswitch_data_0

    .line 224
    :pswitch_0
    const/4 v4, 0x3

    .local v4, "size":I
    goto :goto_1

    .line 218
    .end local v4    # "size":I
    :pswitch_1
    const/4 v4, 0x4

    .line 219
    .restart local v4    # "size":I
    goto :goto_1

    .line 208
    .end local v4    # "size":I
    :pswitch_2
    const/16 v4, 0x9

    .line 209
    .restart local v4    # "size":I
    add-int/lit8 v3, v3, 0x1

    .line 210
    goto :goto_1

    .line 204
    .end local v4    # "size":I
    :pswitch_3
    const/4 v4, 0x5

    .line 205
    .restart local v4    # "size":I
    goto :goto_1

    .line 212
    .end local v4    # "size":I
    :pswitch_4
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    .line 213
    .restart local v4    # "size":I
    if-le v4, v1, :cond_0

    .line 214
    move v1, v4

    .line 227
    :cond_0
    :goto_1
    add-int/2addr v2, v4

    .line 193
    .end local v4    # "size":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v3    # "i":I
    :cond_1
    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    .line 231
    iput v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    .line 232
    return-void

    .line 185
    .end local v0    # "n":I
    .end local v1    # "max":I
    .end local v2    # "index":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private copyBootstrapMethods(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;[C)V
    .locals 10
    .param p1, "classWriter"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    .param p2, "items"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .param p3, "c"    # [C

    .line 394
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->getAttributes()I

    move-result v0

    .line 395
    .local v0, "u":I
    const/4 v1, 0x0

    .line 396
    .local v1, "found":Z
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 397
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "BootstrapMethods"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    const/4 v1, 0x1

    .line 400
    goto :goto_1

    .line 402
    :cond_0
    add-int/lit8 v4, v0, 0x4

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v0, v4

    .line 396
    .end local v3    # "attrName":Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 405
    return-void

    .line 408
    :cond_2
    add-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 409
    .local v2, "boostrapMethodCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    add-int/lit8 v4, v0, 0xa

    .local v4, "v":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 410
    sub-int v5, v4, v0

    add-int/lit8 v5, v5, -0xa

    .line 411
    .local v5, "position":I
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    invoke-virtual {p0, v6, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 412
    .local v6, "hashCode":I
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .local v7, "k":I
    :goto_3
    if-lez v7, :cond_3

    .line 413
    add-int/lit8 v8, v4, 0x4

    invoke-virtual {p0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {p0, v8, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    xor-int/2addr v6, v8

    .line 414
    add-int/lit8 v4, v4, 0x2

    .line 412
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 416
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x4

    .line 417
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(I)V

    .line 418
    .local v7, "item":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    const v8, 0x7fffffff

    and-int/2addr v8, v6

    invoke-virtual {v7, v5, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(II)V

    .line 419
    iget v8, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    array-length v9, p2

    rem-int/2addr v8, v9

    .line 420
    .local v8, "index":I
    aget-object v9, p2, v8

    iput-object v9, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 421
    aput-object v7, p2, v8

    .line 409
    .end local v5    # "position":I
    .end local v6    # "hashCode":I
    .end local v7    # "item":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .end local v8    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 423
    .end local v3    # "j":I
    .end local v4    # "v":I
    :cond_4
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 424
    .local v3, "attrSize":I
    new-instance v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    add-int/lit8 v5, v3, 0x3e

    invoke-direct {v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>(I)V

    .line 425
    .local v4, "bootstrapMethods":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v6, v0, 0xa

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v4, v5, v6, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 426
    iput v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethodsCount:I

    .line 427
    iput-object v4, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 428
    return-void
.end method

.method private getAttributes()I
    .locals 4

    .line 2264
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 2266
    .local v1, "u":I
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 2267
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_0

    .line 2268
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2267
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2270
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 2266
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2272
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 2273
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_3

    .line 2274
    add-int/lit8 v2, v1, 0x8

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "j":I
    :goto_3
    if-lez v2, :cond_2

    .line 2275
    add-int/lit8 v3, v1, 0xc

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2274
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2277
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x8

    .line 2273
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2280
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v1, 0x2

    return v0
.end method

.method private getImplicitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;)V
    .locals 8
    .param p1, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;

    .line 2041
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->desc:Ljava/lang/String;

    .line 2042
    .local v0, "desc":Ljava/lang/String;
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    .line 2043
    .local v1, "locals":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2044
    .local v2, "local":I
    iget v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 2045
    iget-object v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->name:Ljava/lang/String;

    const-string v4, "<init>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2046
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .local v3, "local":I
    sget-object v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    .line 2048
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    invoke-virtual {p0, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    .line 2051
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 2053
    .local v3, "i":I
    :goto_1
    move v4, v3

    .line 2054
    .local v4, "j":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3b

    sparse-switch v3, :sswitch_data_0

    .line 2090
    goto/16 :goto_6

    .line 2072
    :goto_2
    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_2

    .line 2073
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2075
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x4c

    if-ne v3, v7, :cond_3

    .line 2076
    add-int/lit8 v5, v5, 0x1

    .line 2077
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    .line 2078
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2081
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .local v3, "local":I
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 2082
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2084
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :goto_4
    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_4

    .line 2085
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2087
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 2088
    move v2, v3

    move v3, v7

    goto :goto_5

    .line 2066
    .end local v3    # "local":I
    .end local v7    # "i":I
    .restart local v2    # "local":I
    .restart local v5    # "i":I
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2067
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2063
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2064
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2069
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2070
    move v2, v3

    move v3, v5

    goto :goto_5

    .line 2060
    .end local v3    # "local":I
    .restart local v2    # "local":I
    :sswitch_5
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "local":I
    .restart local v3    # "local":I
    sget-object v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v6, v1, v2

    .line 2061
    move v2, v3

    move v3, v5

    .line 2092
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v2    # "local":I
    .local v3, "i":I
    :goto_5
    goto :goto_1

    .line 2093
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :goto_6
    iput v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    .line 2094
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_5
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I
    .locals 8
    .param p1, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p2, "u"    # I

    .line 1732
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 1733
    .local v0, "target":I
    ushr-int/lit8 v1, v0, 0x18

    const/high16 v2, -0x1000000

    sparse-switch v1, :sswitch_data_0

    .line 1782
    ushr-int/lit8 v1, v0, 0x18

    const/16 v3, 0x43

    if-ge v1, v3, :cond_1

    const/16 v2, -0x100

    goto :goto_1

    .line 1769
    :sswitch_0
    const v1, -0xffff01

    and-int/2addr v0, v1

    .line 1770
    add-int/lit8 p2, p2, 0x4

    .line 1771
    goto :goto_2

    .line 1748
    :sswitch_1
    and-int/2addr v0, v2

    .line 1749
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1750
    .local v1, "n":I
    new-array v2, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1751
    new-array v2, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1752
    new-array v2, v1, [I

    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->index:[I

    .line 1753
    add-int/lit8 p2, p2, 0x3

    .line 1754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1755
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1756
    .local v3, "start":I
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1757
    .local v4, "length":I
    iget-object v5, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v6, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v3, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1758
    iget-object v5, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    add-int v6, v3, v4

    iget-object v7, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v6, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1759
    iget-object v5, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->index:[I

    add-int/lit8 v6, p2, 0x4

    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aput v6, v5, v2

    .line 1760
    nop

    .end local v3    # "start":I
    .end local v4    # "length":I
    add-int/lit8 p2, p2, 0x6

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1762
    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 1743
    .end local v1    # "n":I
    :sswitch_2
    and-int/2addr v0, v2

    .line 1744
    add-int/lit8 p2, p2, 0x1

    .line 1745
    goto :goto_2

    .line 1737
    :sswitch_3
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 1738
    add-int/lit8 p2, p2, 0x2

    .line 1739
    goto :goto_2

    .line 1782
    :cond_1
    :goto_1
    and-int/2addr v0, v2

    .line 1783
    add-int/lit8 p2, p2, 0x3

    .line 1786
    :goto_2
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v1

    .line 1787
    .local v1, "pathLength":I
    iput v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    .line 1788
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    new-instance v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    invoke-direct {v2, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;-><init>([BI)V

    :goto_3
    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 1789
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I
    .locals 7
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "av"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    .line 1890
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 1891
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 1899
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 1893
    :sswitch_0
    add-int/lit8 v0, p1, 0x5

    return v0

    .line 1897
    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 1895
    :sswitch_2
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 1902
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "v":I
    .local v3, "v":I
    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_a

    .line 1929
    :sswitch_3
    invoke-virtual {p0, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1930
    add-int/lit8 v3, v3, 0x2

    .line 1931
    goto/16 :goto_a

    .line 1933
    :sswitch_4
    invoke-virtual {p0, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    add-int/lit8 v3, v3, 0x4

    .line 1935
    goto/16 :goto_a

    .line 1937
    :sswitch_5
    invoke-virtual {p0, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1938
    add-int/lit8 v3, v3, 0x2

    .line 1939
    goto/16 :goto_a

    .line 1945
    :sswitch_6
    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    .line 1946
    .local p1, "size":I
    add-int/lit8 v3, v3, 0x2

    .line 1947
    if-nez p1, :cond_1

    .line 1948
    add-int/lit8 v1, v3, -0x2

    .line 1949
    invoke-virtual {p4, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v2

    .line 1948
    invoke-direct {p0, v1, p2, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v0

    return v0

    .line 1951
    :cond_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "v":I
    .local v4, "v":I
    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_2

    .line 2027
    add-int/lit8 v1, v4, -0x3

    invoke-virtual {p4, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v2

    invoke-direct {p0, v1, p2, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v3

    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 1962
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_7
    new-array v2, p1, [Z

    .line 1963
    .local v2, "zv":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 1964
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v2, v3

    .line 1965
    add-int/lit8 v4, v4, 0x3

    .line 1963
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1967
    :cond_3
    invoke-virtual {p4, p3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1968
    add-int/lit8 v0, v4, -0x1

    .line 1969
    .end local v4    # "v":I
    .local v0, "v":I
    move v3, v0

    goto/16 :goto_a

    .line 1971
    .end local v0    # "v":I
    .end local v2    # "zv":[Z
    .end local v3    # "i":I
    .restart local v4    # "v":I
    :sswitch_8
    new-array v0, p1, [S

    .line 1972
    .local v0, "sv":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 1973
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 1974
    add-int/lit8 v4, v4, 0x3

    .line 1972
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1976
    :cond_4
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1977
    add-int/lit8 v3, v4, -0x1

    .line 1978
    .end local v4    # "v":I
    .local v3, "v":I
    goto/16 :goto_a

    .line 1998
    .end local v0    # "sv":[S
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_9
    new-array v0, p1, [J

    .line 1999
    .local v0, "lv":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, p1, :cond_5

    .line 2000
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2001
    add-int/lit8 v4, v4, 0x3

    .line 1999
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2003
    :cond_5
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2004
    add-int/lit8 v3, v4, -0x1

    .line 2005
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 1989
    .end local v0    # "lv":[J
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_a
    new-array v0, p1, [I

    .line 1990
    .local v0, "iv":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, p1, :cond_6

    .line 1991
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 1992
    add-int/lit8 v4, v4, 0x3

    .line 1990
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1994
    :cond_6
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1995
    add-int/lit8 v3, v4, -0x1

    .line 1996
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2007
    .end local v0    # "iv":[I
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_b
    new-array v0, p1, [F

    .line 2008
    .local v0, "fv":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, p1, :cond_7

    .line 2009
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    .line 2010
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    .line 2011
    add-int/lit8 v4, v4, 0x3

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2013
    :cond_7
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2014
    add-int/lit8 v3, v4, -0x1

    .line 2015
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 2017
    .end local v0    # "fv":[F
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_c
    new-array v0, p1, [D

    .line 2018
    .local v0, "dv":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, p1, :cond_8

    .line 2019
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    .line 2020
    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2021
    add-int/lit8 v4, v4, 0x3

    .line 2018
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2023
    :cond_8
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2024
    add-int/lit8 v3, v4, -0x1

    .line 2025
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 1980
    .end local v0    # "dv":[D
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_d
    new-array v0, p1, [C

    .line 1981
    .local v0, "cv":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, p1, :cond_9

    .line 1982
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1983
    add-int/lit8 v4, v4, 0x3

    .line 1981
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1985
    :cond_9
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1986
    add-int/lit8 v3, v4, -0x1

    .line 1987
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 1953
    .end local v0    # "cv":[C
    .end local v1    # "i":I
    .end local v3    # "v":I
    .restart local v4    # "v":I
    :sswitch_e
    new-array v0, p1, [B

    .line 1954
    .local v0, "bv":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    if-ge v1, p1, :cond_a

    .line 1955
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1956
    add-int/lit8 v4, v4, 0x3

    .line 1954
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1958
    :cond_a
    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1959
    add-int/lit8 v3, v4, -0x1

    .line 1960
    .end local v4    # "v":I
    .restart local v3    # "v":I
    goto/16 :goto_a

    .line 1915
    .end local v0    # "bv":[B
    .end local v1    # "i":I
    .end local p1    # "size":I
    :sswitch_f
    iget-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    .line 1916
    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1915
    :goto_9
    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1918
    add-int/lit8 v3, v3, 0x2

    .line 1919
    goto :goto_a

    .line 1921
    :sswitch_10
    iget-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1922
    add-int/lit8 v3, v3, 0x2

    .line 1923
    goto :goto_a

    .line 1907
    :sswitch_11
    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1908
    add-int/lit8 v3, v3, 0x2

    .line 1909
    goto :goto_a

    .line 1925
    :sswitch_12
    iget-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1926
    add-int/lit8 v3, v3, 0x2

    .line 1927
    goto :goto_a

    .line 1911
    :sswitch_13
    iget-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1912
    add-int/lit8 v3, v3, 0x2

    .line 1913
    goto :goto_a

    .line 1941
    :sswitch_14
    add-int/lit8 p1, v3, 0x2

    .line 1942
    invoke-virtual {p0, v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 1941
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v3

    .line 1943
    nop

    .line 2030
    :goto_a
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x5b -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x40 -> :sswitch_14
        0x42 -> :sswitch_13
        0x43 -> :sswitch_12
        0x44 -> :sswitch_11
        0x46 -> :sswitch_11
        0x49 -> :sswitch_11
        0x4a -> :sswitch_11
        0x53 -> :sswitch_10
        0x5a -> :sswitch_f
        0x5b -> :sswitch_6
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x73 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x42 -> :sswitch_e
        0x43 -> :sswitch_d
        0x44 -> :sswitch_c
        0x46 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_9
        0x53 -> :sswitch_8
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method private readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I
    .locals 3
    .param p1, "v"    # I
    .param p2, "buf"    # [C
    .param p3, "named"    # Z
    .param p4, "av"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    .line 1854
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1855
    .local v0, "i":I
    add-int/lit8 p1, p1, 0x2

    .line 1856
    if-eqz p3, :cond_0

    .line 1857
    :goto_0
    if-lez v0, :cond_1

    .line 1858
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result p1

    .line 1857
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1861
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 1862
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result p1

    .line 1861
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1865
    :cond_1
    if-eqz p4, :cond_2

    .line 1866
    invoke-virtual {p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 1868
    :cond_2
    return p1
.end method

.method private readAttribute([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .locals 11
    .param p1, "attrs"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "buf"    # [C
    .param p6, "codeOff"    # I
    .param p7, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 2319
    move-object v0, p1

    move-object v1, p2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2320
    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2321
    aget-object v4, v0, v2

    move-object v5, p0

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v3

    return-object v3

    .line 2319
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2324
    .end local v2    # "i":I
    :cond_1
    new-instance v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    invoke-direct {v3, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v2

    return-object v2
.end method

.method private static readClass(Ljava/io/InputStream;Z)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    if-eqz p0, :cond_7

    .line 473
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 474
    .local v0, "b":[B
    const/4 v1, 0x0

    .line 476
    .local v1, "len":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 477
    .local v2, "n":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 478
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 479
    new-array v3, v1, [B

    .line 480
    .local v3, "c":[B
    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    move-object v0, v3

    .line 483
    .end local v3    # "c":[B
    :cond_0
    nop

    .line 498
    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 483
    :cond_1
    return-object v0

    .line 485
    :cond_2
    add-int/2addr v1, v2

    .line 486
    :try_start_1
    array-length v3, v0

    if-ne v1, v3, :cond_5

    .line 487
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    .local v3, "last":I
    if-gez v3, :cond_4

    .line 489
    nop

    .line 498
    if-eqz p1, :cond_3

    .line 499
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 489
    :cond_3
    return-object v0

    .line 491
    :cond_4
    :try_start_2
    array-length v5, v0

    add-int/lit16 v5, v5, 0x3e8

    new-array v5, v5, [B

    .line 492
    .local v5, "c":[B
    invoke-static {v0, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "len":I
    .local v4, "len":I
    int-to-byte v6, v3

    aput-byte v6, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    move-object v0, v5

    move v1, v4

    .line 496
    .end local v2    # "n":I
    .end local v3    # "last":I
    .end local v4    # "len":I
    .end local v5    # "c":[B
    .restart local v1    # "len":I
    :cond_5
    goto :goto_0

    .line 498
    .end local v0    # "b":[B
    .end local v1    # "len":I
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_6

    .line 499
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    .line 470
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Class not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)V
    .locals 48
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p3, "u"    # I

    .line 1053
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v0, p3

    iget-object v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 1054
    .local v13, "b":[B
    iget-object v12, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 1055
    .local v12, "c":[C
    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 1056
    .local v11, "maxStack":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    .line 1057
    .local v10, "maxLocals":I
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v9

    .line 1058
    .local v9, "codeLength":I
    const/16 v8, 0x8

    add-int/2addr v0, v8

    .line 1061
    .end local p3    # "u":I
    .local v0, "u":I
    move/from16 v16, v0

    .line 1062
    .local v16, "codeStart":I
    add-int v6, v0, v9

    .line 1063
    .local v6, "codeEnd":I
    add-int/lit8 v1, v9, 0x2

    new-array v1, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iput-object v1, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-object v5, v1

    .line 1064
    .local v5, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v7, v1, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1065
    :goto_0
    const/16 v4, 0x84

    const/4 v3, 0x1

    if-ge v0, v6, :cond_3

    .line 1066
    sub-int v1, v0, v16

    .line 1067
    .local v1, "offset":I
    aget-byte v2, v13, v0

    and-int/lit16 v2, v2, 0xff

    .line 1068
    .local v2, "opcode":I
    sget-object v17, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->TYPE:[B

    aget-byte v17, v17, v2

    packed-switch v17, :pswitch_data_0

    .line 1133
    :pswitch_0
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_3

    .line 1078
    :pswitch_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1079
    add-int/lit8 v0, v0, 0x3

    .line 1080
    goto/16 :goto_3

    .line 1086
    :pswitch_2
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v13, v3

    and-int/lit16 v2, v3, 0xff

    .line 1087
    if-ne v2, v4, :cond_0

    .line 1088
    add-int/lit8 v0, v0, 0x6

    goto/16 :goto_3

    .line 1090
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 1092
    goto/16 :goto_3

    .line 1106
    :pswitch_3
    add-int/lit8 v3, v0, 0x4

    and-int/lit8 v4, v1, 0x3

    sub-int/2addr v3, v4

    .line 1108
    .end local v0    # "u":I
    .local v3, "u":I
    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v7, v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1109
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 1110
    add-int/lit8 v4, v3, 0xc

    invoke-virtual {v7, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v7, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1111
    add-int/lit8 v3, v3, 0x8

    .line 1109
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1113
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x8

    .line 1114
    move v0, v3

    goto :goto_3

    .line 1095
    .end local v3    # "u":I
    .local v0, "u":I
    :pswitch_4
    add-int/lit8 v4, v0, 0x4

    and-int/lit8 v17, v1, 0x3

    sub-int v4, v4, v17

    .line 1097
    .end local v0    # "u":I
    .local v4, "u":I
    invoke-virtual {v7, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v7, v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1098
    add-int/lit8 v0, v4, 0x8

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v8

    sub-int/2addr v0, v8

    add-int/2addr v0, v3

    .local v0, "i":I
    :goto_2
    if-lez v0, :cond_2

    .line 1099
    add-int/lit8 v3, v4, 0xc

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1100
    add-int/lit8 v4, v4, 0x4

    .line 1098
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1102
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0xc

    .line 1103
    move v0, v4

    goto :goto_3

    .line 1082
    .end local v4    # "u":I
    .local v0, "u":I
    :pswitch_5
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1083
    add-int/lit8 v0, v0, 0x5

    .line 1084
    goto :goto_3

    .line 1074
    :pswitch_6
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v7, v3, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1075
    add-int/lit8 v0, v0, 0x3

    .line 1076
    goto :goto_3

    .line 1129
    :pswitch_7
    add-int/lit8 v0, v0, 0x5

    .line 1130
    goto :goto_3

    .line 1125
    :pswitch_8
    add-int/lit8 v0, v0, 0x3

    .line 1126
    goto :goto_3

    .line 1118
    :pswitch_9
    add-int/lit8 v0, v0, 0x2

    .line 1119
    goto :goto_3

    .line 1071
    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    .line 1072
    nop

    .line 1136
    .end local v1    # "offset":I
    .end local v2    # "opcode":I
    :goto_3
    const/16 v8, 0x8

    goto/16 :goto_0

    .line 1139
    :cond_3
    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "i":I
    :goto_4
    if-lez v1, :cond_4

    .line 1140
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v2

    .line 1141
    .local v2, "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v8

    .line 1142
    .local v8, "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {v7, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-virtual {v7, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v4

    .line 1143
    .local v4, "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget-object v3, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    move/from16 v19, v6

    .end local v6    # "codeEnd":I
    .local v19, "codeEnd":I
    add-int/lit8 v6, v0, 0x8

    invoke-virtual {v7, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v3, v3, v6

    invoke-virtual {v7, v3, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1144
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v15, v2, v8, v4, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTryCatchBlock(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Ljava/lang/String;)V

    .line 1145
    nop

    .end local v2    # "start":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "handler":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v8    # "end":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v0, v0, 0x8

    .line 1139
    add-int/lit8 v1, v1, -0x1

    move/from16 v6, v19

    const/4 v3, 0x1

    const/16 v4, 0x84

    goto :goto_4

    .end local v19    # "codeEnd":I
    .restart local v6    # "codeEnd":I
    :cond_4
    move/from16 v19, v6

    .line 1147
    .end local v1    # "i":I
    .end local v6    # "codeEnd":I
    .restart local v19    # "codeEnd":I
    add-int/lit8 v0, v0, 0x2

    .line 1150
    const/4 v1, 0x0

    .line 1151
    .local v1, "tanns":[I
    const/4 v2, 0x0

    .line 1152
    .local v2, "itanns":[I
    const/4 v8, 0x0

    .line 1153
    .local v8, "tann":I
    const/16 v20, 0x0

    .line 1154
    .local v20, "itann":I
    const/4 v3, -0x1

    .line 1155
    .local v3, "ntoff":I
    const/4 v4, -0x1

    .line 1156
    .local v4, "nitoff":I
    const/4 v6, 0x0

    .line 1157
    .local v6, "varTable":I
    const/16 v21, 0x0

    .line 1158
    .local v21, "varTypeTable":I
    const/16 v22, 0x1

    .line 1159
    .local v22, "zip":Z
    move-object/from16 v23, v1

    .end local v1    # "tanns":[I
    .local v23, "tanns":[I
    iget v1, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    const/16 v17, 0x8

    and-int/lit8 v1, v1, 0x8

    move/from16 v24, v8

    .end local v8    # "tann":I
    .local v24, "tann":I
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 1160
    .local v1, "unzip":Z
    :goto_5
    const/16 v25, 0x0

    .line 1161
    .local v25, "stackMap":I
    const/16 v26, 0x0

    .line 1162
    .local v26, "stackMapSize":I
    const/16 v27, 0x0

    .line 1163
    .local v27, "frameCount":I
    const/16 v28, 0x0

    .line 1164
    .local v28, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    const/16 v29, 0x0

    .line 1166
    .local v29, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v30

    move/from16 v47, v21

    move/from16 v21, v0

    move/from16 v0, v22

    move/from16 v22, v3

    move v3, v6

    move-object/from16 v6, v23

    move/from16 v23, v4

    move-object v4, v2

    move/from16 v2, v47

    .local v0, "zip":Z
    .local v2, "varTypeTable":I
    .local v3, "varTable":I
    .local v4, "itanns":[I
    .local v6, "tanns":[I
    .local v21, "u":I
    .local v22, "ntoff":I
    .local v23, "nitoff":I
    .local v30, "i":I
    :goto_6
    move-object/from16 v31, v4

    .end local v4    # "itanns":[I
    .local v31, "itanns":[I
    move/from16 v32, v3

    .end local v3    # "varTable":I
    .local v32, "varTable":I
    if-lez v30, :cond_1e

    .line 1167
    add-int/lit8 v3, v21, 0x2

    invoke-virtual {v7, v3, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1168
    .local v3, "attrName":Ljava/lang/String;
    const-string v4, "LocalVariableTable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1169
    iget v4, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_9

    .line 1170
    add-int/lit8 v4, v21, 0x8

    .line 1171
    .end local v32    # "varTable":I
    .local v4, "varTable":I
    add-int/lit8 v8, v21, 0x8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .local v8, "j":I
    move/from16 v32, v21

    .local v32, "v":I
    :goto_7
    if-lez v8, :cond_8

    .line 1172
    move/from16 v36, v0

    .end local v0    # "zip":Z
    .local v36, "zip":Z
    add-int/lit8 v0, v32, 0xa

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 1173
    .local v0, "label":I
    aget-object v33, v5, v0

    if-nez v33, :cond_6

    .line 1174
    move/from16 v37, v1

    .end local v1    # "unzip":Z
    .local v37, "unzip":Z
    invoke-virtual {v7, v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    move/from16 v38, v2

    .end local v2    # "varTypeTable":I
    .local v38, "varTypeTable":I
    iget v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    const/16 v18, 0x1

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    goto :goto_8

    .line 1173
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .restart local v1    # "unzip":Z
    .restart local v2    # "varTypeTable":I
    :cond_6
    move/from16 v37, v1

    move/from16 v38, v2

    .line 1176
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    :goto_8
    add-int/lit8 v1, v32, 0xc

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1177
    aget-object v1, v5, v0

    if-nez v1, :cond_7

    .line 1178
    invoke-virtual {v7, v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v1

    iget v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    const/16 v18, 0x1

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1180
    :cond_7
    nop

    .end local v0    # "label":I
    add-int/lit8 v32, v32, 0xa

    .line 1171
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    goto :goto_7

    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .local v0, "zip":Z
    .restart local v1    # "unzip":Z
    .restart local v2    # "varTypeTable":I
    :cond_8
    move/from16 v36, v0

    move/from16 v37, v1

    move/from16 v38, v2

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    move-object/from16 v18, v3

    move v3, v4

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v15, v37

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v8    # "j":I
    .end local v32    # "v":I
    goto/16 :goto_12

    .line 1169
    .end local v4    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .restart local v0    # "zip":Z
    .restart local v1    # "unzip":Z
    .restart local v2    # "varTypeTable":I
    .local v32, "varTable":I
    :cond_9
    move/from16 v36, v0

    move/from16 v37, v1

    move/from16 v38, v2

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    const/4 v4, 0x1

    goto/16 :goto_f

    .line 1183
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .restart local v0    # "zip":Z
    .restart local v1    # "unzip":Z
    .restart local v2    # "varTypeTable":I
    :cond_a
    move/from16 v36, v0

    move/from16 v37, v1

    move/from16 v38, v2

    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1184
    add-int/lit8 v0, v21, 0x8

    move v2, v0

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v38    # "varTypeTable":I
    .local v0, "varTypeTable":I
    goto/16 :goto_12

    .line 1185
    .end local v0    # "varTypeTable":I
    .restart local v38    # "varTypeTable":I
    :cond_b
    const-string v0, "LineNumberTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1186
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 1187
    add-int/lit8 v0, v21, 0x8

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "j":I
    move/from16 v1, v21

    .local v1, "v":I
    :goto_9
    if-lez v0, :cond_f

    .line 1188
    add-int/lit8 v2, v1, 0xa

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1189
    .local v2, "label":I
    aget-object v4, v5, v2

    if-nez v4, :cond_c

    .line 1190
    invoke-virtual {v7, v2, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v4

    iget v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    const/16 v18, 0x1

    or-int/lit8 v8, v8, 0x1

    iput v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->status:I

    .line 1192
    :cond_c
    aget-object v4, v5, v2

    .line 1193
    .local v4, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_a
    iget v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->line:I

    if-lez v8, :cond_e

    .line 1194
    iget-object v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    if-nez v8, :cond_d

    .line 1195
    new-instance v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    iput-object v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1197
    :cond_d
    iget-object v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_a

    .line 1199
    :cond_e
    add-int/lit8 v8, v1, 0xc

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    iput v8, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->line:I

    .line 1200
    nop

    .end local v2    # "label":I
    .end local v4    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v1, v1, 0x4

    .line 1187
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x1

    .end local v0    # "j":I
    .end local v1    # "v":I
    goto/16 :goto_f

    .line 1186
    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_f

    .line 1203
    :cond_11
    nop

    .line 1204
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1205
    add-int/lit8 v0, v21, 0x8

    const/4 v1, 0x1

    invoke-direct {v7, v15, v14, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readTypeAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)[I

    move-result-object v0

    .line 1206
    .end local v6    # "tanns":[I
    .local v0, "tanns":[I
    array-length v1, v0

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v2

    const/16 v4, 0x43

    if-ge v2, v4, :cond_12

    goto :goto_b

    :cond_12
    aget v2, v0, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 1207
    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v33, v1

    goto :goto_c

    .line 1206
    :cond_13
    :goto_b
    const/16 v33, -0x1

    .line 1207
    :goto_c
    move/from16 v1, v33

    move-object v6, v0

    move/from16 v22, v1

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v22    # "ntoff":I
    .local v1, "ntoff":I
    goto/16 :goto_12

    .line 1208
    .end local v0    # "tanns":[I
    .end local v1    # "ntoff":I
    .restart local v6    # "tanns":[I
    .restart local v22    # "ntoff":I
    :cond_14
    nop

    .line 1209
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1210
    add-int/lit8 v0, v21, 0x8

    const/4 v1, 0x0

    invoke-direct {v7, v15, v14, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readTypeAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)[I

    move-result-object v0

    .line 1211
    .end local v31    # "itanns":[I
    .local v0, "itanns":[I
    array-length v2, v0

    if-eqz v2, :cond_16

    aget v2, v0, v1

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v2

    const/16 v4, 0x43

    if-ge v2, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    aget v2, v0, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 1212
    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v33, v1

    goto :goto_e

    .line 1211
    :cond_16
    const/4 v4, 0x1

    :goto_d
    const/16 v33, -0x1

    .line 1212
    :goto_e
    move/from16 v1, v33

    move-object v4, v0

    move/from16 v23, v1

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v31, v12

    move/from16 v12, v19

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    .end local v23    # "nitoff":I
    .local v1, "nitoff":I
    goto/16 :goto_12

    .line 1213
    .end local v0    # "itanns":[I
    .end local v1    # "nitoff":I
    .restart local v23    # "nitoff":I
    .restart local v31    # "itanns":[I
    :cond_17
    const/4 v4, 0x1

    const-string v0, "StackMapTable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1214
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19

    .line 1215
    add-int/lit8 v0, v21, 0xa

    .line 1216
    .end local v25    # "stackMap":I
    .local v0, "stackMap":I
    add-int/lit8 v1, v21, 0x4

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 1217
    .end local v26    # "stackMapSize":I
    .local v1, "stackMapSize":I
    add-int/lit8 v2, v21, 0x8

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v27    # "frameCount":I
    .local v2, "frameCount":I
    goto/16 :goto_12

    .line 1237
    .end local v0    # "stackMap":I
    .end local v1    # "stackMapSize":I
    .end local v2    # "frameCount":I
    .restart local v25    # "stackMap":I
    .restart local v26    # "stackMapSize":I
    .restart local v27    # "frameCount":I
    :cond_18
    const-string v0, "StackMap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1238
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_19

    .line 1239
    const/4 v0, 0x0

    .line 1240
    .end local v36    # "zip":Z
    .local v0, "zip":Z
    add-int/lit8 v1, v21, 0xa

    .line 1241
    .end local v25    # "stackMap":I
    .local v1, "stackMap":I
    add-int/lit8 v2, v21, 0x4

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    .line 1242
    .end local v26    # "stackMapSize":I
    .local v2, "stackMapSize":I
    add-int/lit8 v8, v21, 0x8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    move/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v27, v8

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v27    # "frameCount":I
    .local v8, "frameCount":I
    goto/16 :goto_12

    .line 1261
    .end local v0    # "zip":Z
    .end local v1    # "stackMap":I
    .end local v2    # "stackMapSize":I
    .end local v8    # "frameCount":I
    .restart local v25    # "stackMap":I
    .restart local v26    # "stackMapSize":I
    .restart local v27    # "frameCount":I
    .restart local v36    # "zip":Z
    :cond_19
    :goto_f
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move/from16 v34, v9

    move-object/from16 v4, v31

    move/from16 v3, v32

    move/from16 v0, v36

    move/from16 v15, v37

    move/from16 v2, v38

    move-object/from16 v31, v12

    move/from16 v12, v19

    goto/16 :goto_12

    .line 1250
    :cond_1a
    const/4 v0, 0x0

    move v8, v0

    move-object/from16 v2, v29

    .end local v29    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v2, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v8, "j":I
    :goto_10
    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    array-length v0, v0

    if-ge v8, v0, :cond_1d

    .line 1251
    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    aget-object v0, v0, v8

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1252
    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    aget-object v0, v0, v8

    add-int/lit8 v18, v21, 0x8

    add-int/lit8 v1, v21, 0x4

    .line 1253
    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v29

    add-int/lit8 v33, v16, -0x8

    .line 1252
    move/from16 v1, v36

    .end local v36    # "zip":Z
    .local v1, "zip":Z
    move/from16 v39, v1

    move/from16 v15, v37

    .end local v1    # "zip":Z
    .end local v37    # "unzip":Z
    .local v15, "unzip":Z
    .local v39, "zip":Z
    move-object/from16 v1, p0

    move/from16 v34, v9

    move/from16 v40, v38

    move-object v9, v2

    .end local v2    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v34, "codeLength":I
    .local v40, "varTypeTable":I
    move/from16 v2, v18

    move-object/from16 v18, v3

    move/from16 v4, v32

    .end local v3    # "attrName":Ljava/lang/String;
    .end local v32    # "varTable":I
    .local v4, "varTable":I
    .local v18, "attrName":Ljava/lang/String;
    move/from16 v3, v29

    move/from16 v41, v4

    move-object/from16 v42, v31

    .end local v4    # "varTable":I
    .end local v31    # "itanns":[I
    .local v41, "varTable":I
    .local v42, "itanns":[I
    move-object v4, v12

    move-object/from16 p3, v5

    .end local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local p3, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v5, v33

    move-object/from16 v43, v6

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .local v12, "codeEnd":I
    .local v31, "c":[C
    .local v43, "tanns":[I
    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->read(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v0

    .line 1254
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    if-eqz v0, :cond_1c

    .line 1255
    iput-object v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 1256
    move-object v1, v0

    move-object v2, v1

    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v1, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_11

    .line 1251
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v1    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v15    # "unzip":Z
    .end local v18    # "attrName":Ljava/lang/String;
    .end local v34    # "codeLength":I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v41    # "varTable":I
    .end local v42    # "itanns":[I
    .end local v43    # "tanns":[I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v2    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v3    # "attrName":Ljava/lang/String;
    .restart local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v6    # "tanns":[I
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    :cond_1b
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v43, v6

    move/from16 v34, v9

    move-object/from16 v42, v31

    move/from16 v41, v32

    move/from16 v39, v36

    move/from16 v15, v37

    move/from16 v40, v38

    move-object v9, v2

    move-object/from16 v31, v12

    move/from16 v12, v19

    .line 1250
    .end local v2    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .end local v32    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .restart local v18    # "attrName":Ljava/lang/String;
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v41    # "varTable":I
    .restart local v42    # "itanns":[I
    .restart local v43    # "tanns":[I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_1c
    move-object v2, v9

    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v2    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_11
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p3

    move/from16 v19, v12

    move/from16 v37, v15

    move-object/from16 v3, v18

    move-object/from16 v12, v31

    move/from16 v9, v34

    move/from16 v36, v39

    move/from16 v38, v40

    move/from16 v32, v41

    move-object/from16 v31, v42

    move-object/from16 v6, v43

    const/4 v4, 0x1

    move-object/from16 v15, p1

    goto/16 :goto_10

    .end local v15    # "unzip":Z
    .end local v18    # "attrName":Ljava/lang/String;
    .end local v34    # "codeLength":I
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v41    # "varTable":I
    .end local v42    # "itanns":[I
    .end local v43    # "tanns":[I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v3    # "attrName":Ljava/lang/String;
    .restart local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v6    # "tanns":[I
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    .restart local v38    # "varTypeTable":I
    :cond_1d
    move-object/from16 v18, v3

    move-object/from16 p3, v5

    move-object/from16 v43, v6

    move/from16 v34, v9

    move-object/from16 v42, v31

    move/from16 v41, v32

    move/from16 v39, v36

    move/from16 v15, v37

    move/from16 v40, v38

    move-object v9, v2

    move-object/from16 v31, v12

    move/from16 v12, v19

    .end local v2    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v6    # "tanns":[I
    .end local v19    # "codeEnd":I
    .end local v32    # "varTable":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "varTypeTable":I
    .local v9, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .restart local v18    # "attrName":Ljava/lang/String;
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v41    # "varTable":I
    .restart local v42    # "itanns":[I
    .restart local v43    # "tanns":[I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move-object/from16 v29, v9

    move/from16 v0, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move-object/from16 v4, v42

    .line 1261
    .end local v8    # "j":I
    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v39    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v41    # "varTable":I
    .end local v42    # "itanns":[I
    .end local v43    # "tanns":[I
    .local v0, "zip":Z
    .local v2, "varTypeTable":I
    .local v3, "varTable":I
    .local v4, "itanns":[I
    .restart local v6    # "tanns":[I
    .restart local v29    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_12
    add-int/lit8 v1, v21, 0x4

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int v21, v21, v1

    .line 1166
    .end local v18    # "attrName":Ljava/lang/String;
    add-int/lit8 v30, v30, -0x1

    move-object/from16 v5, p3

    move/from16 v19, v12

    move v1, v15

    move-object/from16 v12, v31

    move/from16 v9, v34

    move-object/from16 v15, p1

    goto/16 :goto_6

    .end local v3    # "varTable":I
    .end local v4    # "itanns":[I
    .end local v15    # "unzip":Z
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v1, "unzip":Z
    .restart local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v9, "codeLength":I
    .local v12, "c":[C
    .restart local v19    # "codeEnd":I
    .local v31, "itanns":[I
    .restart local v32    # "varTable":I
    :cond_1e
    move/from16 v39, v0

    move v15, v1

    move/from16 v40, v2

    move-object/from16 p3, v5

    move-object/from16 v43, v6

    move/from16 v34, v9

    move-object/from16 v42, v31

    move/from16 v41, v32

    const/16 v4, 0x43

    move-object/from16 v31, v12

    move/from16 v12, v19

    .line 1263
    .end local v0    # "zip":Z
    .end local v1    # "unzip":Z
    .end local v2    # "varTypeTable":I
    .end local v5    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v6    # "tanns":[I
    .end local v9    # "codeLength":I
    .end local v19    # "codeEnd":I
    .end local v30    # "i":I
    .end local v32    # "varTable":I
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .local v31, "c":[C
    .restart local v34    # "codeLength":I
    .restart local v39    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v41    # "varTable":I
    .restart local v42    # "itanns":[I
    .restart local v43    # "tanns":[I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v21, v21, 0x2

    .line 1266
    if-eqz v25, :cond_25

    .line 1272
    move-object/from16 v0, p2

    .line 1273
    .end local v28    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v0, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    const/4 v3, -0x1

    iput v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    .line 1274
    const/4 v1, 0x0

    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 1275
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    .line 1276
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    .line 1277
    iput v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    .line 1278
    new-array v1, v10, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    .line 1279
    new-array v1, v11, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    .line 1280
    if-eqz v15, :cond_1f

    .line 1281
    invoke-direct {v7, v14}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->getImplicitFrame(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;)V

    .line 1294
    :cond_1f
    move/from16 v1, v25

    .local v1, "i":I
    :goto_13
    add-int v2, v25, v26

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_24

    .line 1295
    aget-byte v2, v13, v1

    const/16 v5, 0x8

    if-ne v2, v5, :cond_23

    .line 1296
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1297
    .local v2, "v":I
    if-ltz v2, :cond_22

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .restart local v9    # "codeLength":I
    if-ge v2, v9, :cond_21

    .line 1298
    add-int v5, v16, v2

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xbb

    if-ne v5, v6, :cond_20

    .line 1299
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v8, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-virtual {v7, v2, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_14

    .line 1298
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_20
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_14

    .line 1297
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_21
    move-object/from16 v8, p3

    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    goto :goto_14

    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_22
    move-object/from16 v8, p3

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "codeLength":I
    goto :goto_14

    .line 1295
    .end local v2    # "v":I
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_23
    move-object/from16 v8, p3

    move/from16 v9, v34

    .line 1294
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "codeLength":I
    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object/from16 p3, v8

    move/from16 v34, v9

    goto :goto_13

    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_24
    move-object/from16 v8, p3

    move/from16 v9, v34

    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "codeLength":I
    move-object/from16 v28, v0

    goto :goto_15

    .line 1266
    .end local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .end local v1    # "i":I
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "codeLength":I
    .restart local v28    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .restart local v34    # "codeLength":I
    .restart local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :cond_25
    move-object/from16 v8, p3

    move/from16 v9, v34

    const/4 v3, -0x1

    .line 1305
    .end local v34    # "codeLength":I
    .end local p3    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "codeLength":I
    :goto_15
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_26

    .line 1317
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move v2, v10

    move-object v3, v5

    const/16 v5, 0x43

    move v4, v6

    const/16 v6, 0x43

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_16

    .line 1305
    :cond_26
    const/16 v6, 0x43

    .line 1321
    :goto_16
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_27

    const/16 v1, -0x21

    goto :goto_17

    :cond_27
    const/4 v1, 0x0

    :goto_17
    move/from16 v18, v1

    .line 1322
    .local v18, "opcodeDelta":I
    move/from16 v0, v16

    move v5, v0

    .line 1323
    .end local v21    # "u":I
    .local v5, "u":I
    :goto_18
    const/4 v4, 0x0

    if-ge v5, v12, :cond_48

    .line 1324
    sub-int v3, v5, v16

    .line 1327
    .local v3, "offset":I
    aget-object v2, v8, v3

    .line 1328
    .local v2, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    if-eqz v2, :cond_28

    .line 1329
    iget-object v0, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1330
    .local v0, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iput-object v4, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1331
    move v4, v15

    move-object/from16 v15, p1

    .end local v15    # "unzip":Z
    .local v4, "unzip":Z
    invoke-virtual {v15, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1332
    iget v1, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_29

    iget v1, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->line:I

    if-lez v1, :cond_29

    .line 1333
    iget v1, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->line:I

    invoke-virtual {v15, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLineNumber(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1334
    :goto_19
    if-eqz v0, :cond_29

    .line 1335
    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->line:I

    invoke-virtual {v15, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLineNumber(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1336
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    goto :goto_19

    .line 1328
    .end local v0    # "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v4    # "unzip":Z
    .restart local v15    # "unzip":Z
    :cond_28
    move v4, v15

    move-object/from16 v15, p1

    .line 1342
    .end local v15    # "unzip":Z
    .restart local v4    # "unzip":Z
    :cond_29
    move/from16 v1, v25

    move-object/from16 v0, v28

    .end local v25    # "stackMap":I
    .end local v28    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v0, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v1, "stackMap":I
    :goto_1a
    if-eqz v0, :cond_30

    iget v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    if-eq v6, v3, :cond_2b

    iget v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    move/from16 v19, v10

    const/4 v10, -0x1

    .end local v10    # "maxLocals":I
    .local v19, "maxLocals":I
    if-ne v6, v10, :cond_2a

    goto :goto_1b

    :cond_2a
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v9, v4

    goto/16 :goto_1e

    .end local v19    # "maxLocals":I
    .restart local v10    # "maxLocals":I
    :cond_2b
    move/from16 v19, v10

    const/4 v10, -0x1

    .line 1346
    .end local v10    # "maxLocals":I
    .restart local v19    # "maxLocals":I
    :goto_1b
    iget v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    if-eq v6, v10, :cond_2e

    .line 1347
    move/from16 v6, v39

    .end local v39    # "zip":Z
    .local v6, "zip":Z
    if-eqz v6, :cond_2d

    if-eqz v4, :cond_2c

    move-object/from16 p3, v2

    move v10, v3

    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move-object v11, v0

    move v12, v1

    move v9, v4

    goto :goto_1c

    .line 1351
    :cond_2c
    iget v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    move-object/from16 p3, v2

    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local p3, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    iget v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    move/from16 v21, v3

    .end local v3    # "offset":I
    .local v21, "offset":I
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    move/from16 v37, v4

    .end local v4    # "unzip":Z
    .restart local v37    # "unzip":Z
    iget v4, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    move/from16 v30, v5

    .end local v5    # "u":I
    .local v30, "u":I
    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    move/from16 v32, v11

    move-object v11, v0

    .end local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v11, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v32, "maxStack":I
    move-object/from16 v0, p1

    move/from16 v33, v12

    move v12, v1

    .end local v1    # "stackMap":I
    .local v12, "stackMap":I
    .local v33, "codeEnd":I
    move v1, v10

    move-object/from16 v10, p3

    .end local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v10, "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v10, v21

    .end local v21    # "offset":I
    .local v10, "offset":I
    .restart local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v21, v9

    move/from16 v9, v37

    .end local v37    # "unzip":Z
    .local v9, "unzip":Z
    .local v21, "codeLength":I
    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1d

    .line 1347
    .end local v10    # "offset":I
    .end local v21    # "codeLength":I
    .end local v30    # "u":I
    .end local v32    # "maxStack":I
    .end local v33    # "codeEnd":I
    .end local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    :cond_2d
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move-object v11, v0

    move v12, v1

    move v9, v4

    .line 1348
    .end local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .local v9, "unzip":Z
    .restart local v10    # "offset":I
    .local v11, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v12, "stackMap":I
    .restart local v21    # "codeLength":I
    .restart local v30    # "u":I
    .restart local v32    # "maxStack":I
    .restart local v33    # "codeEnd":I
    .restart local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_1c
    const/4 v1, -0x1

    iget v2, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    iget-object v3, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    iget v4, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    iget-object v5, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1d

    .line 1346
    .end local v6    # "zip":Z
    .end local v10    # "offset":I
    .end local v21    # "codeLength":I
    .end local v30    # "u":I
    .end local v32    # "maxStack":I
    .end local v33    # "codeEnd":I
    .end local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v39    # "zip":Z
    :cond_2e
    move-object/from16 p3, v2

    move v10, v3

    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v9, v4

    .line 1355
    .end local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v10    # "offset":I
    .local v11, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v12, "stackMap":I
    .restart local v21    # "codeLength":I
    .restart local v30    # "u":I
    .restart local v32    # "maxStack":I
    .restart local v33    # "codeEnd":I
    .restart local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_1d
    if-lez v27, :cond_2f

    .line 1356
    invoke-direct {v7, v12, v6, v9, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrame(IZZLorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;)I

    move-result v1

    .line 1357
    .end local v12    # "stackMap":I
    .restart local v1    # "stackMap":I
    add-int/lit8 v27, v27, -0x1

    move-object/from16 v2, p3

    move/from16 v39, v6

    move v4, v9

    move v3, v10

    move-object v0, v11

    move/from16 v10, v19

    move/from16 v9, v21

    move/from16 v5, v30

    move/from16 v11, v32

    move/from16 v12, v33

    const/16 v6, 0x43

    goto/16 :goto_1a

    .line 1359
    .end local v1    # "stackMap":I
    .restart local v12    # "stackMap":I
    :cond_2f
    const/4 v0, 0x0

    move-object/from16 v2, p3

    move/from16 v39, v6

    move v4, v9

    move v3, v10

    move v1, v12

    move/from16 v10, v19

    move/from16 v9, v21

    move/from16 v5, v30

    move/from16 v11, v32

    move/from16 v12, v33

    const/16 v6, 0x43

    .end local v11    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .restart local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    goto/16 :goto_1a

    .line 1342
    .end local v6    # "zip":Z
    .end local v19    # "maxLocals":I
    .end local v21    # "codeLength":I
    .end local v30    # "u":I
    .end local v32    # "maxStack":I
    .end local v33    # "codeEnd":I
    .end local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v1    # "stackMap":I
    .restart local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v3    # "offset":I
    .restart local v4    # "unzip":Z
    .restart local v5    # "u":I
    .local v9, "codeLength":I
    .local v10, "maxLocals":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v39    # "zip":Z
    :cond_30
    move-object/from16 p3, v2

    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v19, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v6, v39

    move-object v11, v0

    move v12, v1

    move v10, v3

    move v9, v4

    .line 1364
    .end local v0    # "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .end local v1    # "stackMap":I
    .end local v2    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "offset":I
    .end local v4    # "unzip":Z
    .end local v5    # "u":I
    .end local v39    # "zip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .local v10, "offset":I
    .local v11, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .local v12, "stackMap":I
    .restart local v19    # "maxLocals":I
    .restart local v21    # "codeLength":I
    .restart local v30    # "u":I
    .restart local v32    # "maxStack":I
    .restart local v33    # "codeEnd":I
    .restart local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    :goto_1e
    aget-byte v0, v13, v30

    and-int/lit16 v4, v0, 0xff

    .line 1365
    .local v4, "opcode":I
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->TYPE:[B

    aget-byte v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 1533
    :pswitch_b
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v30, 0x3

    aget-byte v1, v13, v5

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 1534
    add-int/lit8 v5, v30, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    .end local v30    # "u":I
    .restart local v5    # "u":I
    goto/16 :goto_2b

    .line 1394
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_c
    const/16 v0, 0xda

    if-ge v4, v0, :cond_31

    add-int/lit8 v0, v4, -0x31

    goto :goto_1f

    :cond_31
    add-int/lit8 v0, v4, -0x14

    .line 1395
    .end local v4    # "opcode":I
    .local v0, "opcode":I
    :goto_1f
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    add-int v3, v10, v1

    aget-object v5, v8, v3

    .line 1401
    .local v5, "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/16 v1, 0xa7

    if-eq v0, v1, :cond_37

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_32

    move/from16 v36, v6

    move-object v6, v5

    goto/16 :goto_23

    .line 1404
    :cond_32
    const/16 v1, 0xa6

    if-gt v0, v1, :cond_33

    add-int/lit8 v1, v0, 0x1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    sub-int/2addr v1, v4

    goto :goto_20

    :cond_33
    const/4 v4, 0x1

    xor-int/lit8 v1, v0, 0x1

    :goto_20
    move v3, v1

    .line 1406
    .end local v0    # "opcode":I
    .local v3, "opcode":I
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    move-object v2, v0

    .line 1407
    .local v2, "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    invoke-virtual {v15, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1408
    const/16 v0, 0xc8

    invoke-virtual {v15, v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1409
    invoke-virtual {v15, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1414
    if-eqz v12, :cond_36

    if-eqz v11, :cond_35

    iget v0, v11, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    add-int/lit8 v1, v10, 0x3

    if-eq v0, v1, :cond_34

    goto :goto_21

    :cond_34
    move/from16 v25, v3

    move/from16 v36, v6

    move-object v6, v5

    goto :goto_22

    .line 1416
    :cond_35
    :goto_21
    const/16 v1, 0x100

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p1

    move-object/from16 v38, v2

    .end local v2    # "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v38, "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move/from16 v2, v25

    move/from16 v25, v3

    .end local v3    # "opcode":I
    .local v25, "opcode":I
    move-object/from16 v3, v28

    move/from16 v4, v36

    move/from16 v36, v6

    move-object v6, v5

    .end local v5    # "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v6, "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v36    # "zip":Z
    move-object/from16 v5, v37

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_22

    .line 1414
    .end local v25    # "opcode":I
    .end local v36    # "zip":Z
    .end local v38    # "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v2    # "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v3    # "opcode":I
    .restart local v5    # "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v6, "zip":Z
    :cond_36
    move-object/from16 v38, v2

    move/from16 v25, v3

    move/from16 v36, v6

    move-object v6, v5

    .line 1419
    .end local v2    # "endif":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "opcode":I
    .end local v5    # "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v6, "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v25    # "opcode":I
    .restart local v36    # "zip":Z
    :goto_22
    move/from16 v4, v25

    goto :goto_24

    .line 1401
    .end local v25    # "opcode":I
    .end local v36    # "zip":Z
    .restart local v0    # "opcode":I
    .restart local v5    # "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v6, "zip":Z
    :cond_37
    move/from16 v36, v6

    move-object v6, v5

    .line 1402
    .end local v5    # "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v6, "target":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v36    # "zip":Z
    :goto_23
    add-int/lit8 v1, v0, 0x21

    invoke-virtual {v15, v1, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    move v4, v0

    .line 1419
    .end local v0    # "opcode":I
    .restart local v4    # "opcode":I
    :goto_24
    add-int/lit8 v5, v30, 0x3

    .line 1420
    .end local v30    # "u":I
    .local v5, "u":I
    move/from16 v37, v9

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    goto/16 :goto_2b

    .line 1423
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .local v6, "zip":Z
    .restart local v30    # "u":I
    :pswitch_d
    move/from16 v36, v6

    .end local v6    # "zip":Z
    .restart local v36    # "zip":Z
    add-int/lit8 v5, v30, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v4, v0, 0xff

    .line 1424
    const/16 v6, 0x84

    if-ne v4, v6, :cond_38

    .line 1425
    add-int/lit8 v5, v30, 0x2

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    add-int/lit8 v5, v30, 0x4

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v1

    invoke-virtual {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1426
    add-int/lit8 v5, v30, 0x6

    move/from16 v37, v9

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v30    # "u":I
    .restart local v5    # "u":I
    goto/16 :goto_2b

    .line 1428
    .end local v5    # "u":I
    .restart local v30    # "u":I
    :cond_38
    add-int/lit8 v5, v30, 0x2

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v15, v4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1429
    add-int/lit8 v5, v30, 0x4

    .line 1431
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v37, v9

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    const/16 v17, 0x8

    goto/16 :goto_2b

    .line 1450
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .restart local v6    # "zip":Z
    .restart local v30    # "u":I
    :pswitch_e
    move/from16 v36, v6

    const/16 v6, 0x84

    .end local v6    # "zip":Z
    .restart local v36    # "zip":Z
    add-int/lit8 v5, v30, 0x4

    and-int/lit8 v0, v10, 0x3

    sub-int/2addr v5, v0

    .line 1452
    .end local v30    # "u":I
    .restart local v5    # "u":I
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v10, v0

    .line 1453
    .local v3, "label":I
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 1454
    .local v0, "len":I
    new-array v1, v0, [I

    .line 1455
    .local v1, "keys":[I
    new-array v2, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1456
    .local v2, "values":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/16 v17, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 1457
    const/16 v25, 0x0

    move/from16 v6, v25

    .local v6, "i":I
    :goto_25
    if-ge v6, v0, :cond_39

    .line 1458
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v25

    aput v25, v1, v6

    .line 1459
    move/from16 v25, v0

    .end local v0    # "len":I
    .local v25, "len":I
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/2addr v0, v10

    aget-object v0, v8, v0

    aput-object v0, v2, v6

    .line 1460
    add-int/lit8 v5, v5, 0x8

    .line 1457
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v25

    goto :goto_25

    .end local v25    # "len":I
    .restart local v0    # "len":I
    :cond_39
    move/from16 v25, v0

    .line 1462
    .end local v0    # "len":I
    .end local v6    # "i":I
    .restart local v25    # "len":I
    aget-object v0, v8, v3

    invoke-virtual {v15, v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1463
    move/from16 v37, v9

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    goto/16 :goto_2b

    .line 1434
    .end local v1    # "keys":[I
    .end local v2    # "values":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "label":I
    .end local v5    # "u":I
    .end local v25    # "len":I
    .end local v36    # "zip":Z
    .local v6, "zip":Z
    .restart local v30    # "u":I
    :pswitch_f
    move/from16 v36, v6

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .restart local v36    # "zip":Z
    add-int/lit8 v5, v30, 0x4

    and-int/lit8 v0, v10, 0x3

    sub-int/2addr v5, v0

    .line 1436
    .end local v30    # "u":I
    .restart local v5    # "u":I
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int v3, v10, v0

    .line 1437
    .restart local v3    # "label":I
    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 1438
    .local v0, "min":I
    add-int/lit8 v1, v5, 0x8

    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v1

    .line 1439
    .local v1, "max":I
    sub-int v2, v1, v0

    const/4 v6, 0x1

    add-int/2addr v2, v6

    new-array v2, v2, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1440
    .local v2, "table":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    add-int/lit8 v5, v5, 0xc

    .line 1441
    const/16 v25, 0x0

    move/from16 v6, v25

    .local v6, "i":I
    :goto_26
    move/from16 v37, v9

    .end local v9    # "unzip":Z
    .restart local v37    # "unzip":Z
    array-length v9, v2

    if-ge v6, v9, :cond_3a

    .line 1442
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/2addr v9, v10

    aget-object v9, v8, v9

    aput-object v9, v2, v6

    .line 1443
    add-int/lit8 v5, v5, 0x4

    .line 1441
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v37

    goto :goto_26

    .line 1445
    .end local v6    # "i":I
    :cond_3a
    aget-object v6, v8, v3

    invoke-virtual {v15, v0, v1, v6, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1446
    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    goto/16 :goto_2b

    .line 1528
    .end local v0    # "min":I
    .end local v1    # "max":I
    .end local v2    # "table":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v3    # "label":I
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .local v6, "zip":Z
    .restart local v9    # "unzip":Z
    .restart local v30    # "u":I
    :pswitch_10
    move/from16 v36, v6

    move/from16 v37, v9

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v9    # "unzip":Z
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v30, 0x2

    aget-byte v1, v13, v5

    invoke-virtual {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1529
    add-int/lit8 v5, v30, 0x3

    .line 1530
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v9, v31

    goto/16 :goto_2b

    .line 1482
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v6    # "zip":Z
    .restart local v9    # "unzip":Z
    .restart local v30    # "u":I
    :pswitch_11
    move/from16 v36, v6

    move/from16 v37, v9

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v9    # "unzip":Z
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move-object/from16 v9, v31

    .end local v31    # "c":[C
    .local v9, "c":[C
    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1483
    add-int/lit8 v5, v30, 0x3

    .line 1484
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1478
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_12
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1479
    add-int/lit8 v5, v30, 0x2

    .line 1480
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1386
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_13
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int v0, v4, v18

    add-int/lit8 v5, v30, 0x1

    .line 1387
    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v1

    add-int v3, v10, v1

    aget-object v1, v8, v3

    .line 1386
    invoke-virtual {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1388
    add-int/lit8 v5, v30, 0x5

    .line 1389
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1382
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_14
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v0

    add-int v3, v10, v0

    aget-object v0, v8, v3

    invoke-virtual {v15, v4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitJumpInsn(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1383
    add-int/lit8 v5, v30, 0x3

    .line 1384
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1506
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v6    # "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_15
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 1507
    .local v0, "cpIndex":I
    iget-object v1, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->bootstrapMethods:[I

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v1, v1, v2

    .line 1508
    .local v1, "bsmIndex":I
    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    invoke-virtual {v7, v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;

    .line 1509
    .local v2, "bsm":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 1510
    .local v3, "bsmArgCount":I
    new-array v5, v3, [Ljava/lang/Object;

    .line 1511
    .local v5, "bsmArgs":[Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x4

    .line 1512
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v3, :cond_3b

    .line 1513
    move/from16 v25, v3

    .end local v3    # "bsmArgCount":I
    .local v25, "bsmArgCount":I
    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    invoke-virtual {v7, v3, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    .line 1514
    add-int/lit8 v1, v1, 0x2

    .line 1512
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v25

    goto :goto_27

    .end local v25    # "bsmArgCount":I
    .restart local v3    # "bsmArgCount":I
    :cond_3b
    move/from16 v25, v3

    .line 1516
    .end local v3    # "bsmArgCount":I
    .end local v6    # "i":I
    .restart local v25    # "bsmArgCount":I
    iget-object v3, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v7, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    aget v0, v3, v6

    .line 1517
    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, "iname":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v7, v6, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, "idesc":Ljava/lang/String;
    invoke-virtual {v15, v3, v6, v2, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;[Ljava/lang/Object;)V

    .line 1520
    add-int/lit8 v28, v30, 0x5

    .line 1521
    .end local v30    # "u":I
    .local v28, "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v5, v28

    goto/16 :goto_2b

    .line 1487
    .end local v0    # "cpIndex":I
    .end local v1    # "bsmIndex":I
    .end local v2    # "bsm":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;
    .end local v3    # "iname":Ljava/lang/String;
    .end local v5    # "bsmArgs":[Ljava/lang/Object;
    .end local v25    # "bsmArgCount":I
    .end local v28    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_16
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    .end local v6    # "zip":Z
    .end local v31    # "c":[C
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    .line 1488
    .restart local v0    # "cpIndex":I
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v13, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3c

    const/4 v5, 0x1

    goto :goto_28

    :cond_3c
    const/4 v5, 0x0

    .line 1489
    .local v5, "itf":Z
    :goto_28
    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, "iowner":Ljava/lang/String;
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    aget v3, v1, v2

    .line 1491
    .end local v0    # "cpIndex":I
    .local v3, "cpIndex":I
    invoke-virtual {v7, v3, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .line 1492
    .local v2, "iname":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "idesc":Ljava/lang/String;
    const/16 v0, 0xb6

    if-ge v4, v0, :cond_3d

    .line 1494
    invoke-virtual {v15, v4, v6, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v1

    move-object/from16 v28, v2

    move/from16 v31, v3

    move-object/from16 v38, v6

    move v6, v4

    goto :goto_29

    .line 1496
    :cond_3d
    move-object/from16 v0, p1

    move-object/from16 v25, v1

    .end local v1    # "idesc":Ljava/lang/String;
    .local v25, "idesc":Ljava/lang/String;
    move v1, v4

    move-object/from16 v28, v2

    .end local v2    # "iname":Ljava/lang/String;
    .local v28, "iname":Ljava/lang/String;
    move-object v2, v6

    move/from16 v31, v3

    .end local v3    # "cpIndex":I
    .local v31, "cpIndex":I
    move-object/from16 v3, v28

    move-object/from16 v38, v6

    move v6, v4

    .end local v4    # "opcode":I
    .local v6, "opcode":I
    .local v38, "iowner":Ljava/lang/String;
    move-object/from16 v4, v25

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1498
    :goto_29
    const/16 v0, 0xb9

    if-ne v6, v0, :cond_3e

    .line 1499
    add-int/lit8 v0, v30, 0x5

    move v5, v0

    move v4, v6

    move/from16 v0, v22

    move/from16 v1, v24

    .end local v30    # "u":I
    .local v0, "u":I
    goto/16 :goto_2b

    .line 1501
    .end local v0    # "u":I
    .restart local v30    # "u":I
    :cond_3e
    add-int/lit8 v0, v30, 0x3

    .line 1503
    .end local v30    # "u":I
    .restart local v0    # "u":I
    move v5, v0

    move v4, v6

    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1524
    .end local v0    # "u":I
    .end local v5    # "itf":Z
    .end local v25    # "idesc":Ljava/lang/String;
    .end local v28    # "iname":Ljava/lang/String;
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .end local v38    # "iowner":Ljava/lang/String;
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .local v31, "c":[C
    :pswitch_17
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1525
    add-int/lit8 v5, v30, 0x3

    .line 1526
    .end local v30    # "u":I
    .local v5, "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1371
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_18
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    const/16 v0, 0x36

    if-le v6, v0, :cond_3f

    .line 1372
    add-int/lit8 v4, v6, -0x3b

    .line 1373
    .end local v6    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v1, v4, 0x2

    add-int/2addr v1, v0

    and-int/lit8 v0, v4, 0x3

    invoke-virtual {v15, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2a

    .line 1376
    .end local v4    # "opcode":I
    .restart local v6    # "opcode":I
    :cond_3f
    add-int/lit8 v4, v6, -0x1a

    .line 1377
    .end local v6    # "opcode":I
    .restart local v4    # "opcode":I
    shr-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x15

    and-int/lit8 v1, v4, 0x3

    invoke-virtual {v15, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1379
    :goto_2a
    add-int/lit8 v5, v30, 0x1

    .line 1380
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto/16 :goto_2b

    .line 1466
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_19
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    aget-byte v0, v13, v5

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v15, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1467
    add-int/lit8 v5, v30, 0x2

    .line 1468
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_2b

    .line 1474
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_1a
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    invoke-virtual {v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readShort(I)S

    move-result v0

    invoke-virtual {v15, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1475
    add-int/lit8 v5, v30, 0x3

    .line 1476
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_2b

    .line 1470
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_1b
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    add-int/lit8 v5, v30, 0x1

    aget-byte v0, v13, v5

    invoke-virtual {v15, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1471
    add-int/lit8 v5, v30, 0x2

    .line 1472
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    goto :goto_2b

    .line 1367
    .end local v5    # "u":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .restart local v4    # "opcode":I
    .local v6, "zip":Z
    .local v9, "unzip":Z
    .restart local v30    # "u":I
    .restart local v31    # "c":[C
    :pswitch_1c
    move/from16 v36, v6

    move/from16 v37, v9

    move-object/from16 v9, v31

    const/16 v17, 0x8

    move v6, v4

    .end local v4    # "opcode":I
    .end local v31    # "c":[C
    .local v6, "opcode":I
    .local v9, "c":[C
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    invoke-virtual {v15, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsn(I)V

    .line 1368
    add-int/lit8 v5, v30, 0x1

    .line 1369
    .end local v30    # "u":I
    .restart local v5    # "u":I
    move/from16 v0, v22

    move/from16 v1, v24

    .line 1539
    .end local v6    # "opcode":I
    .end local v22    # "ntoff":I
    .end local v24    # "tann":I
    .local v0, "ntoff":I
    .local v1, "tann":I
    .restart local v4    # "opcode":I
    :goto_2b
    move-object/from16 v6, v43

    .end local v43    # "tanns":[I
    .local v6, "tanns":[I
    if-eqz v6, :cond_43

    array-length v2, v6

    if-ge v1, v2, :cond_43

    if-gt v0, v10, :cond_43

    .line 1540
    if-ne v0, v10, :cond_40

    .line 1541
    aget v2, v6, v1

    invoke-direct {v7, v14, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 1542
    .local v2, "v":I
    add-int/lit8 v3, v2, 0x2

    move/from16 v22, v0

    .end local v0    # "ntoff":I
    .restart local v22    # "ntoff":I
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    move/from16 v24, v4

    .end local v4    # "opcode":I
    .local v24, "opcode":I
    iget-object v4, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 1544
    move/from16 v25, v5

    .end local v5    # "u":I
    .local v25, "u":I
    invoke-virtual {v7, v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1543
    move/from16 v28, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v28, "v":I
    invoke-virtual {v15, v0, v4, v5, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 1542
    invoke-direct {v7, v3, v9, v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    goto :goto_2c

    .line 1540
    .end local v22    # "ntoff":I
    .end local v24    # "opcode":I
    .end local v25    # "u":I
    .end local v28    # "v":I
    .restart local v0    # "ntoff":I
    .restart local v4    # "opcode":I
    .restart local v5    # "u":I
    :cond_40
    move/from16 v22, v0

    move/from16 v24, v4

    move/from16 v25, v5

    .line 1546
    .end local v0    # "ntoff":I
    .end local v4    # "opcode":I
    .end local v5    # "u":I
    .restart local v22    # "ntoff":I
    .restart local v24    # "opcode":I
    .restart local v25    # "u":I
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    array-length v0, v6

    if-ge v1, v0, :cond_42

    aget v0, v6, v1

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v0

    const/16 v2, 0x43

    if-ge v0, v2, :cond_41

    goto :goto_2d

    :cond_41
    aget v0, v6, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 1547
    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    goto :goto_2e

    .line 1546
    :cond_42
    :goto_2d
    const/4 v3, -0x1

    .line 1547
    :goto_2e
    move v0, v3

    move-object/from16 v43, v6

    move/from16 v4, v24

    move/from16 v5, v25

    .end local v22    # "ntoff":I
    .restart local v0    # "ntoff":I
    goto :goto_2b

    .line 1539
    .end local v24    # "opcode":I
    .end local v25    # "u":I
    .restart local v4    # "opcode":I
    .restart local v5    # "u":I
    :cond_43
    move/from16 v22, v0

    move/from16 v24, v4

    move/from16 v25, v5

    .line 1549
    .end local v0    # "ntoff":I
    .end local v4    # "opcode":I
    .end local v5    # "u":I
    .restart local v22    # "ntoff":I
    .restart local v24    # "opcode":I
    .restart local v25    # "u":I
    move/from16 v0, v20

    move/from16 v2, v23

    .end local v20    # "itann":I
    .end local v23    # "nitoff":I
    .local v0, "itann":I
    .local v2, "nitoff":I
    :goto_2f
    move-object/from16 v5, v42

    .end local v42    # "itanns":[I
    .local v5, "itanns":[I
    if-eqz v5, :cond_47

    array-length v3, v5

    if-ge v0, v3, :cond_47

    if-gt v2, v10, :cond_47

    .line 1550
    if-ne v2, v10, :cond_44

    .line 1551
    aget v3, v5, v0

    invoke-direct {v7, v14, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v3

    .line 1552
    .local v3, "v":I
    add-int/lit8 v4, v3, 0x2

    move/from16 v28, v1

    .end local v1    # "tann":I
    .local v28, "tann":I
    iget v1, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    move/from16 v20, v2

    .end local v2    # "nitoff":I
    .local v20, "nitoff":I
    iget-object v2, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 1554
    move-object/from16 v43, v6

    .end local v6    # "tanns":[I
    .restart local v43    # "tanns":[I
    invoke-virtual {v7, v3, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 1553
    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "v":I
    .local v23, "v":I
    invoke-virtual {v15, v1, v2, v6, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitInsnAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v1

    .line 1552
    const/4 v2, 0x1

    invoke-direct {v7, v4, v9, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    goto :goto_30

    .line 1550
    .end local v20    # "nitoff":I
    .end local v23    # "v":I
    .end local v28    # "tann":I
    .end local v43    # "tanns":[I
    .restart local v1    # "tann":I
    .restart local v2    # "nitoff":I
    .restart local v6    # "tanns":[I
    :cond_44
    move/from16 v28, v1

    move/from16 v20, v2

    move-object/from16 v43, v6

    const/4 v3, 0x0

    .line 1556
    .end local v1    # "tann":I
    .end local v2    # "nitoff":I
    .end local v6    # "tanns":[I
    .restart local v20    # "nitoff":I
    .restart local v28    # "tann":I
    .restart local v43    # "tanns":[I
    :goto_30
    add-int/lit8 v0, v0, 0x1

    array-length v1, v5

    if-ge v0, v1, :cond_46

    aget v1, v5, v0

    .line 1557
    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v1

    const/16 v2, 0x43

    if-ge v1, v2, :cond_45

    const/4 v6, 0x1

    goto :goto_31

    :cond_45
    aget v1, v5, v0

    const/4 v6, 0x1

    add-int/2addr v1, v6

    .line 1558
    invoke-virtual {v7, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    goto :goto_32

    .line 1556
    :cond_46
    const/16 v2, 0x43

    const/4 v6, 0x1

    .line 1557
    :goto_31
    const/4 v1, -0x1

    .line 1558
    :goto_32
    move v2, v1

    move-object/from16 v42, v5

    move/from16 v1, v28

    move-object/from16 v6, v43

    .end local v20    # "nitoff":I
    .local v1, "nitoff":I
    goto :goto_2f

    .line 1549
    .end local v28    # "tann":I
    .end local v43    # "tanns":[I
    .local v1, "tann":I
    .restart local v2    # "nitoff":I
    .restart local v6    # "tanns":[I
    :cond_47
    move/from16 v28, v1

    move/from16 v20, v2

    move-object/from16 v43, v6

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1560
    .end local v1    # "tann":I
    .end local v2    # "nitoff":I
    .end local v6    # "tanns":[I
    .end local v10    # "offset":I
    .end local v24    # "opcode":I
    .end local p3    # "l":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v20    # "nitoff":I
    .restart local v28    # "tann":I
    .restart local v43    # "tanns":[I
    move-object/from16 v42, v5

    move-object/from16 v31, v9

    move/from16 v10, v19

    move/from16 v23, v20

    move/from16 v9, v21

    move/from16 v5, v25

    move/from16 v24, v28

    move/from16 v39, v36

    move/from16 v15, v37

    const/16 v6, 0x43

    move/from16 v20, v0

    move-object/from16 v28, v11

    move/from16 v25, v12

    move/from16 v11, v32

    move/from16 v12, v33

    goto/16 :goto_18

    .line 1561
    .end local v0    # "itann":I
    .end local v19    # "maxLocals":I
    .end local v21    # "codeLength":I
    .end local v32    # "maxStack":I
    .end local v33    # "codeEnd":I
    .end local v36    # "zip":Z
    .end local v37    # "unzip":Z
    .local v5, "u":I
    .local v9, "codeLength":I
    .local v10, "maxLocals":I
    .local v11, "maxStack":I
    .local v12, "codeEnd":I
    .restart local v15    # "unzip":Z
    .local v20, "itann":I
    .local v23, "nitoff":I
    .local v24, "tann":I
    .local v25, "stackMap":I
    .local v28, "frame":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .restart local v31    # "c":[C
    .restart local v39    # "zip":Z
    .restart local v42    # "itanns":[I
    :cond_48
    move/from16 v30, v5

    move/from16 v21, v9

    move/from16 v19, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v37, v15

    move-object/from16 v9, v31

    move/from16 v36, v39

    move-object/from16 v5, v42

    const/4 v6, 0x1

    move-object/from16 v15, p1

    .end local v10    # "maxLocals":I
    .end local v11    # "maxStack":I
    .end local v12    # "codeEnd":I
    .end local v15    # "unzip":Z
    .end local v31    # "c":[C
    .end local v39    # "zip":Z
    .end local v42    # "itanns":[I
    .local v5, "itanns":[I
    .local v9, "c":[C
    .restart local v19    # "maxLocals":I
    .restart local v21    # "codeLength":I
    .restart local v30    # "u":I
    .restart local v32    # "maxStack":I
    .restart local v33    # "codeEnd":I
    .restart local v36    # "zip":Z
    .restart local v37    # "unzip":Z
    aget-object v0, v8, v21

    if-eqz v0, :cond_49

    .line 1562
    aget-object v0, v8, v21

    invoke-virtual {v15, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLabel(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)V

    .line 1566
    :cond_49
    iget v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_50

    move/from16 v12, v41

    .end local v41    # "varTable":I
    .local v12, "varTable":I
    if-eqz v12, :cond_4f

    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, "typeTable":[I
    move/from16 v11, v40

    .end local v40    # "varTypeTable":I
    .local v11, "varTypeTable":I
    if-eqz v11, :cond_4b

    .line 1569
    add-int/lit8 v2, v11, 0x2

    .line 1570
    .end local v30    # "u":I
    .local v2, "u":I
    invoke-virtual {v7, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v0, v1, [I

    .line 1571
    array-length v1, v0

    .local v1, "i":I
    :goto_33
    if-lez v1, :cond_4a

    .line 1572
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v2, 0x6

    aput v3, v0, v1

    .line 1573
    const/4 v3, -0x1

    add-int/2addr v1, v3

    add-int/lit8 v10, v2, 0x8

    invoke-virtual {v7, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aput v10, v0, v1

    .line 1574
    add-int/2addr v1, v3

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aput v10, v0, v1

    .line 1575
    add-int/lit8 v2, v2, 0xa

    goto :goto_33

    .line 1571
    :cond_4a
    move-object v10, v0

    move/from16 v30, v2

    goto :goto_34

    .line 1568
    .end local v1    # "i":I
    .end local v2    # "u":I
    .restart local v30    # "u":I
    :cond_4b
    move-object v10, v0

    .line 1578
    .end local v0    # "typeTable":[I
    .local v10, "typeTable":[I
    :goto_34
    add-int/lit8 v3, v12, 0x2

    .line 1579
    .end local v30    # "u":I
    .local v3, "u":I
    invoke-virtual {v7, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    move/from16 v17, v0

    .local v17, "i":I
    :goto_35
    if-lez v17, :cond_4e

    .line 1580
    invoke-virtual {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .line 1581
    .local v2, "start":I
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v30

    .line 1582
    .local v30, "length":I
    add-int/lit8 v0, v3, 0x8

    invoke-virtual {v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 1583
    .local v1, "index":I
    const/4 v0, 0x0

    .line 1584
    .local v0, "vsignature":Ljava/lang/String;
    if-eqz v10, :cond_4d

    .line 1585
    const/16 v31, 0x0

    move/from16 v4, v31

    .local v4, "j":I
    :goto_36
    array-length v6, v10

    if-ge v4, v6, :cond_4d

    .line 1586
    aget v6, v10, v4

    if-ne v6, v2, :cond_4c

    add-int/lit8 v6, v4, 0x1

    aget v6, v10, v6

    if-ne v6, v1, :cond_4c

    .line 1587
    add-int/lit8 v6, v4, 0x2

    aget v6, v10, v6

    invoke-virtual {v7, v6, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 1588
    move-object/from16 v31, v0

    goto :goto_37

    .line 1585
    :cond_4c
    add-int/lit8 v4, v4, 0x3

    const/4 v6, 0x1

    goto :goto_36

    .line 1592
    .end local v4    # "j":I
    :cond_4d
    move-object/from16 v31, v0

    .end local v0    # "vsignature":Ljava/lang/String;
    .local v31, "vsignature":Ljava/lang/String;
    :goto_37
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v3, 0x6

    invoke-virtual {v7, v0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    aget-object v34, v8, v2

    add-int v0, v2, v30

    aget-object v35, v8, v0

    move-object/from16 v0, p1

    move/from16 v38, v1

    .end local v1    # "index":I
    .local v38, "index":I
    move-object v1, v4

    move/from16 v39, v2

    .end local v2    # "start":I
    .local v39, "start":I
    move-object v2, v6

    move/from16 v40, v3

    .end local v3    # "u":I
    .local v40, "u":I
    move-object/from16 v3, v31

    const/4 v6, 0x0

    move-object/from16 v4, v34

    move-object/from16 v44, v5

    .end local v5    # "itanns":[I
    .local v44, "itanns":[I
    move-object/from16 v5, v35

    move-object/from16 v35, v13

    move/from16 v34, v36

    move-object/from16 v15, v43

    const/4 v13, 0x1

    .end local v13    # "b":[B
    .end local v36    # "zip":Z
    .end local v43    # "tanns":[I
    .local v15, "tanns":[I
    .local v34, "zip":Z
    .local v35, "b":[B
    move/from16 v6, v38

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;I)V

    .line 1595
    nop

    .end local v30    # "length":I
    .end local v31    # "vsignature":Ljava/lang/String;
    .end local v38    # "index":I
    .end local v39    # "start":I
    add-int/lit8 v3, v40, 0xa

    .line 1579
    .end local v40    # "u":I
    .restart local v3    # "u":I
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v13, v35

    move-object/from16 v5, v44

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v15, p1

    goto :goto_35

    .end local v15    # "tanns":[I
    .end local v34    # "zip":Z
    .end local v35    # "b":[B
    .end local v44    # "itanns":[I
    .restart local v5    # "itanns":[I
    .restart local v13    # "b":[B
    .restart local v36    # "zip":Z
    .restart local v43    # "tanns":[I
    :cond_4e
    move/from16 v40, v3

    move-object/from16 v44, v5

    move-object/from16 v35, v13

    move/from16 v34, v36

    move-object/from16 v15, v43

    const/4 v13, 0x1

    .end local v3    # "u":I
    .end local v5    # "itanns":[I
    .end local v13    # "b":[B
    .end local v36    # "zip":Z
    .end local v43    # "tanns":[I
    .restart local v15    # "tanns":[I
    .restart local v34    # "zip":Z
    .restart local v35    # "b":[B
    .restart local v40    # "u":I
    .restart local v44    # "itanns":[I
    move/from16 v5, v40

    goto :goto_39

    .line 1566
    .end local v10    # "typeTable":[I
    .end local v11    # "varTypeTable":I
    .end local v15    # "tanns":[I
    .end local v17    # "i":I
    .end local v34    # "zip":Z
    .end local v35    # "b":[B
    .end local v44    # "itanns":[I
    .restart local v5    # "itanns":[I
    .restart local v13    # "b":[B
    .local v30, "u":I
    .restart local v36    # "zip":Z
    .local v40, "varTypeTable":I
    .restart local v43    # "tanns":[I
    :cond_4f
    move-object/from16 v44, v5

    move-object/from16 v35, v13

    move/from16 v34, v36

    move/from16 v11, v40

    move-object/from16 v15, v43

    const/4 v13, 0x1

    .end local v5    # "itanns":[I
    .end local v13    # "b":[B
    .end local v36    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v43    # "tanns":[I
    .restart local v11    # "varTypeTable":I
    .restart local v15    # "tanns":[I
    .restart local v34    # "zip":Z
    .restart local v35    # "b":[B
    .restart local v44    # "itanns":[I
    goto :goto_38

    .end local v11    # "varTypeTable":I
    .end local v12    # "varTable":I
    .end local v15    # "tanns":[I
    .end local v34    # "zip":Z
    .end local v35    # "b":[B
    .end local v44    # "itanns":[I
    .restart local v5    # "itanns":[I
    .restart local v13    # "b":[B
    .restart local v36    # "zip":Z
    .restart local v40    # "varTypeTable":I
    .restart local v41    # "varTable":I
    .restart local v43    # "tanns":[I
    :cond_50
    move-object/from16 v44, v5

    move-object/from16 v35, v13

    move/from16 v34, v36

    move/from16 v11, v40

    move/from16 v12, v41

    move-object/from16 v15, v43

    const/4 v13, 0x1

    .line 1600
    .end local v5    # "itanns":[I
    .end local v13    # "b":[B
    .end local v36    # "zip":Z
    .end local v40    # "varTypeTable":I
    .end local v41    # "varTable":I
    .end local v43    # "tanns":[I
    .restart local v11    # "varTypeTable":I
    .restart local v12    # "varTable":I
    .restart local v15    # "tanns":[I
    .restart local v34    # "zip":Z
    .restart local v35    # "b":[B
    .restart local v44    # "itanns":[I
    :goto_38
    move/from16 v5, v30

    .end local v30    # "u":I
    .local v5, "u":I
    :goto_39
    const/16 v0, 0x20

    if-eqz v15, :cond_53

    .line 1601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    array-length v2, v15

    if-ge v1, v2, :cond_52

    .line 1602
    aget v2, v15, v1

    invoke-virtual {v7, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v2

    shr-int/2addr v2, v13

    if-ne v2, v0, :cond_51

    .line 1603
    aget v2, v15, v1

    invoke-direct {v7, v14, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 1604
    .local v2, "v":I
    add-int/lit8 v3, v2, 0x2

    iget v4, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v10, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v6, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v13, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v0, v14, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->index:[I

    .line 1607
    invoke-virtual {v7, v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "v":I
    const/16 v17, 0x1

    .line 1605
    move-object/from16 v30, v8

    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .local v30, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    move-object/from16 v8, p1

    move/from16 v31, v21

    move/from16 v36, v37

    move-object/from16 v21, v9

    .end local v9    # "c":[C
    .end local v37    # "unzip":Z
    .local v21, "c":[C
    .local v31, "codeLength":I
    .local v36, "unzip":Z
    move v9, v4

    move/from16 v4, v19

    .end local v19    # "maxLocals":I
    .local v4, "maxLocals":I
    move/from16 v19, v11

    move/from16 v45, v32

    .end local v11    # "varTypeTable":I
    .end local v32    # "maxStack":I
    .local v19, "varTypeTable":I
    .local v45, "maxStack":I
    move-object v11, v6

    move/from16 v32, v12

    move-object/from16 v6, v21

    move/from16 v21, v33

    .end local v12    # "varTable":I
    .end local v33    # "codeEnd":I
    .local v6, "c":[C
    .local v21, "codeEnd":I
    .local v32, "varTable":I
    move-object v12, v13

    move-object/from16 v33, v35

    .end local v35    # "b":[B
    .local v33, "b":[B
    move-object v13, v0

    move-object v0, v14

    move-object v14, v2

    move-object/from16 v2, p1

    move-object/from16 v35, v15

    .end local v15    # "tanns":[I
    .local v35, "tanns":[I
    move/from16 v15, v17

    invoke-virtual/range {v8 .. v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v8

    .line 1604
    const/4 v15, 0x1

    invoke-direct {v7, v3, v6, v15, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    goto :goto_3b

    .line 1602
    .end local v4    # "maxLocals":I
    .end local v6    # "c":[C
    .end local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v31    # "codeLength":I
    .end local v36    # "unzip":Z
    .end local v45    # "maxStack":I
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "c":[C
    .restart local v11    # "varTypeTable":I
    .restart local v12    # "varTable":I
    .restart local v15    # "tanns":[I
    .local v19, "maxLocals":I
    .local v21, "codeLength":I
    .local v32, "maxStack":I
    .local v33, "codeEnd":I
    .local v35, "b":[B
    .restart local v37    # "unzip":Z
    :cond_51
    move-object/from16 v2, p1

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v0, v14

    move/from16 v4, v19

    move/from16 v31, v21

    move/from16 v45, v32

    move/from16 v21, v33

    move-object/from16 v33, v35

    move/from16 v36, v37

    move/from16 v19, v11

    move/from16 v32, v12

    move-object/from16 v35, v15

    const/4 v15, 0x1

    .line 1601
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "c":[C
    .end local v11    # "varTypeTable":I
    .end local v12    # "varTable":I
    .end local v15    # "tanns":[I
    .end local v37    # "unzip":Z
    .restart local v4    # "maxLocals":I
    .restart local v6    # "c":[C
    .local v19, "varTypeTable":I
    .local v21, "codeEnd":I
    .restart local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v31    # "codeLength":I
    .local v32, "varTable":I
    .local v33, "b":[B
    .local v35, "tanns":[I
    .restart local v36    # "unzip":Z
    .restart local v45    # "maxStack":I
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    move-object v14, v0

    move-object v9, v6

    move/from16 v11, v19

    move-object/from16 v8, v30

    move/from16 v12, v32

    move-object/from16 v15, v35

    move/from16 v37, v36

    move/from16 v32, v45

    const/16 v0, 0x20

    const/4 v13, 0x1

    move/from16 v19, v4

    move-object/from16 v35, v33

    move/from16 v33, v21

    move/from16 v21, v31

    goto/16 :goto_3a

    .end local v4    # "maxLocals":I
    .end local v6    # "c":[C
    .end local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v31    # "codeLength":I
    .end local v36    # "unzip":Z
    .end local v45    # "maxStack":I
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "c":[C
    .restart local v11    # "varTypeTable":I
    .restart local v12    # "varTable":I
    .restart local v15    # "tanns":[I
    .local v19, "maxLocals":I
    .local v21, "codeLength":I
    .local v32, "maxStack":I
    .local v33, "codeEnd":I
    .local v35, "b":[B
    .restart local v37    # "unzip":Z
    :cond_52
    move-object/from16 v2, p1

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v0, v14

    move/from16 v4, v19

    move/from16 v31, v21

    move/from16 v45, v32

    move/from16 v21, v33

    move-object/from16 v33, v35

    move/from16 v36, v37

    move/from16 v19, v11

    move/from16 v32, v12

    move-object/from16 v35, v15

    const/4 v15, 0x1

    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "c":[C
    .end local v11    # "varTypeTable":I
    .end local v12    # "varTable":I
    .end local v15    # "tanns":[I
    .end local v37    # "unzip":Z
    .restart local v4    # "maxLocals":I
    .restart local v6    # "c":[C
    .local v19, "varTypeTable":I
    .local v21, "codeEnd":I
    .restart local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v31    # "codeLength":I
    .local v32, "varTable":I
    .local v33, "b":[B
    .local v35, "tanns":[I
    .restart local v36    # "unzip":Z
    .restart local v45    # "maxStack":I
    goto :goto_3c

    .line 1600
    .end local v1    # "i":I
    .end local v4    # "maxLocals":I
    .end local v6    # "c":[C
    .end local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v31    # "codeLength":I
    .end local v36    # "unzip":Z
    .end local v45    # "maxStack":I
    .restart local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v9    # "c":[C
    .restart local v11    # "varTypeTable":I
    .restart local v12    # "varTable":I
    .restart local v15    # "tanns":[I
    .local v19, "maxLocals":I
    .local v21, "codeLength":I
    .local v32, "maxStack":I
    .local v33, "codeEnd":I
    .local v35, "b":[B
    .restart local v37    # "unzip":Z
    :cond_53
    move-object/from16 v2, p1

    move-object/from16 v30, v8

    move-object v6, v9

    move-object v0, v14

    move/from16 v4, v19

    move/from16 v31, v21

    move/from16 v45, v32

    move/from16 v21, v33

    move-object/from16 v33, v35

    move/from16 v36, v37

    move/from16 v19, v11

    move/from16 v32, v12

    move-object/from16 v35, v15

    const/4 v15, 0x1

    .line 1612
    .end local v8    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .end local v9    # "c":[C
    .end local v11    # "varTypeTable":I
    .end local v12    # "varTable":I
    .end local v15    # "tanns":[I
    .end local v37    # "unzip":Z
    .restart local v4    # "maxLocals":I
    .restart local v6    # "c":[C
    .local v19, "varTypeTable":I
    .local v21, "codeEnd":I
    .restart local v30    # "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .restart local v31    # "codeLength":I
    .local v32, "varTable":I
    .local v33, "b":[B
    .local v35, "tanns":[I
    .restart local v36    # "unzip":Z
    .restart local v45    # "maxStack":I
    :goto_3c
    move-object/from16 v1, v44

    .end local v44    # "itanns":[I
    .local v1, "itanns":[I
    if-eqz v1, :cond_55

    .line 1613
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    array-length v8, v1

    if-ge v3, v8, :cond_55

    .line 1614
    aget v8, v1, v3

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v8

    shr-int/2addr v8, v15

    const/16 v14, 0x20

    if-ne v8, v14, :cond_54

    .line 1615
    aget v8, v1, v3

    invoke-direct {v7, v0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v8

    .line 1616
    .local v8, "v":I
    add-int/lit8 v13, v8, 0x2

    iget v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v11, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->start:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v12, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->end:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    iget-object v14, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->index:[I

    .line 1619
    invoke-virtual {v7, v8, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .end local v8    # "v":I
    const/16 v37, 0x0

    .line 1617
    move-object/from16 v8, p1

    move/from16 v46, v13

    move-object v13, v14

    const/16 v38, 0x20

    move-object/from16 v14, v17

    const/4 v0, 0x1

    move/from16 v15, v37

    invoke-virtual/range {v8 .. v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;[ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v8

    .line 1616
    move/from16 v9, v46

    invoke-direct {v7, v9, v6, v0, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    goto :goto_3e

    .line 1614
    :cond_54
    const/4 v0, 0x1

    const/16 v38, 0x20

    .line 1613
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    const/4 v15, 0x1

    goto :goto_3d

    .line 1626
    .end local v3    # "i":I
    :cond_55
    move-object/from16 v0, v29

    .end local v29    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v0, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_3f
    if-eqz v0, :cond_56

    .line 1627
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 1628
    .local v3, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    const/4 v8, 0x0

    iput-object v8, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 1629
    invoke-virtual {v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 1630
    move-object v0, v3

    .line 1631
    .end local v3    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_3f

    .line 1634
    :cond_56
    move/from16 v3, v45

    .end local v45    # "maxStack":I
    .local v3, "maxStack":I
    invoke-virtual {v2, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitMaxs(II)V

    .line 1635
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private readField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I
    .locals 25
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p3, "u"    # I

    .line 729
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 730
    .local v10, "c":[C
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 731
    .local v1, "access":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 732
    .local v17, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    .line 733
    .local v18, "desc":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x6

    .line 736
    .end local p3    # "u":I
    .local v0, "u":I
    const/4 v2, 0x0

    .line 737
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x0

    .line 738
    .local v3, "anns":I
    const/4 v4, 0x0

    .line 739
    .local v4, "ianns":I
    const/4 v5, 0x0

    .line 740
    .local v5, "tanns":I
    const/4 v6, 0x0

    .line 741
    .local v6, "itanns":I
    const/4 v7, 0x0

    .line 742
    .local v7, "value":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 744
    .local v11, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    move/from16 v19, v1

    move-object/from16 v20, v2

    move v15, v3

    move v14, v4

    move v13, v5

    move-object/from16 v21, v7

    move-object v7, v11

    move/from16 v16, v12

    move v11, v0

    move v12, v6

    .end local v0    # "u":I
    .end local v1    # "access":I
    .end local v2    # "signature":Ljava/lang/String;
    .end local v3    # "anns":I
    .end local v4    # "ianns":I
    .end local v5    # "tanns":I
    .end local v6    # "itanns":I
    .local v7, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v11, "u":I
    .local v12, "itanns":I
    .local v13, "tanns":I
    .local v14, "ianns":I
    .local v15, "anns":I
    .local v16, "i":I
    .local v19, "access":I
    .local v20, "signature":Ljava/lang/String;
    .local v21, "value":Ljava/lang/Object;
    :goto_0
    if-lez v16, :cond_a

    .line 745
    add-int/lit8 v1, v11, 0x2

    invoke-virtual {v8, v1, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, "attrName":Ljava/lang/String;
    const-string v1, "ConstantValue"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 750
    .local v1, "item":I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v1, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v0

    .line 751
    .end local v1    # "item":I
    .end local v21    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    :goto_1
    move-object/from16 v21, v0

    move-object/from16 v24, v6

    goto/16 :goto_2

    .end local v0    # "value":Ljava/lang/Object;
    .restart local v21    # "value":Ljava/lang/Object;
    :cond_1
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v24, v6

    .end local v20    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_2

    .line 753
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v20    # "signature":Ljava/lang/String;
    :cond_2
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    const/high16 v0, 0x20000

    or-int v0, v19, v0

    move/from16 v19, v0

    move-object/from16 v24, v6

    .end local v19    # "access":I
    .local v0, "access":I
    goto/16 :goto_2

    .line 755
    .end local v0    # "access":I
    .restart local v19    # "access":I
    :cond_3
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    const v0, 0x41000

    or-int v0, v19, v0

    move/from16 v19, v0

    move-object/from16 v24, v6

    .end local v19    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_2

    .line 758
    .end local v0    # "access":I
    .restart local v19    # "access":I
    :cond_4
    nop

    .line 759
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 760
    add-int/lit8 v0, v11, 0x8

    move v15, v0

    move-object/from16 v24, v6

    .end local v15    # "anns":I
    .local v0, "anns":I
    goto :goto_2

    .line 761
    .end local v0    # "anns":I
    .restart local v15    # "anns":I
    :cond_5
    nop

    .line 762
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 763
    add-int/lit8 v0, v11, 0x8

    move v13, v0

    move-object/from16 v24, v6

    .end local v13    # "tanns":I
    .local v0, "tanns":I
    goto :goto_2

    .line 764
    .end local v0    # "tanns":I
    .restart local v13    # "tanns":I
    :cond_6
    nop

    .line 765
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    add-int/lit8 v0, v11, 0x8

    move v14, v0

    move-object/from16 v24, v6

    .end local v14    # "ianns":I
    .local v0, "ianns":I
    goto :goto_2

    .line 767
    .end local v0    # "ianns":I
    .restart local v14    # "ianns":I
    :cond_7
    nop

    .line 768
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 769
    add-int/lit8 v0, v11, 0x8

    move v12, v0

    move-object/from16 v24, v6

    .end local v12    # "itanns":I
    .local v0, "itanns":I
    goto :goto_2

    .line 771
    .end local v0    # "itanns":I
    .restart local v12    # "itanns":I
    :cond_8
    iget-object v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    add-int/lit8 v3, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    .line 772
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v4

    const/16 v22, -0x1

    const/16 v23, 0x0

    .line 771
    move-object/from16 v0, p0

    move-object v2, v6

    move-object v5, v10

    move-object/from16 v24, v6

    .end local v6    # "attrName":Ljava/lang/String;
    .local v24, "attrName":Ljava/lang/String;
    move/from16 v6, v22

    move-object v9, v7

    .end local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v9, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    move-object/from16 v7, v23

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v0

    .line 773
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    if-eqz v0, :cond_9

    .line 774
    iput-object v9, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 775
    move-object v1, v0

    move-object v7, v1

    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v1, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_2

    .line 773
    .end local v1    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :cond_9
    move-object v7, v9

    .line 778
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_2
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    .line 744
    .end local v24    # "attrName":Ljava/lang/String;
    add-int/lit8 v16, v16, -0x1

    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_a
    move-object v9, v7

    .line 780
    .end local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v16    # "i":I
    .restart local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    add-int/lit8 v1, v11, 0x2

    .line 783
    .end local v11    # "u":I
    .local v1, "u":I
    move-object/from16 v11, p1

    move v6, v12

    .end local v12    # "itanns":I
    .local v6, "itanns":I
    move/from16 v12, v19

    move v5, v13

    .end local v13    # "tanns":I
    .restart local v5    # "tanns":I
    move-object/from16 v13, v17

    move v4, v14

    .end local v14    # "ianns":I
    .restart local v4    # "ianns":I
    move-object/from16 v14, v18

    move v3, v15

    .end local v15    # "anns":I
    .restart local v3    # "anns":I
    move-object/from16 v15, v20

    move-object/from16 v16, v21

    invoke-virtual/range {v11 .. v16}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    move-result-object v2

    .line 785
    .local v2, "fv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
    if-nez v2, :cond_b

    .line 786
    return v1

    .line 790
    :cond_b
    const/4 v7, 0x1

    if-eqz v3, :cond_c

    .line 791
    invoke-virtual {v8, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .local v11, "i":I
    add-int/lit8 v15, v3, 0x2

    .local v15, "v":I
    :goto_3
    if-lez v11, :cond_c

    .line 792
    add-int/lit8 v12, v15, 0x2

    .line 793
    invoke-virtual {v8, v15, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v13

    .line 792
    invoke-direct {v8, v12, v10, v7, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v15

    .line 791
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 796
    .end local v11    # "i":I
    .end local v15    # "v":I
    :cond_c
    const/4 v11, 0x0

    if-eqz v4, :cond_d

    .line 797
    invoke-virtual {v8, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .local v12, "i":I
    add-int/lit8 v14, v4, 0x2

    .local v14, "v":I
    :goto_4
    if-lez v12, :cond_d

    .line 798
    add-int/lit8 v13, v14, 0x2

    .line 799
    invoke-virtual {v8, v14, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v15

    .line 798
    invoke-direct {v8, v13, v10, v7, v15}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v14

    .line 797
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 802
    .end local v12    # "i":I
    .end local v14    # "v":I
    :cond_d
    if-eqz v5, :cond_f

    .line 803
    invoke-virtual {v8, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .restart local v12    # "i":I
    add-int/lit8 v13, v5, 0x2

    .local v13, "v":I
    :goto_5
    if-lez v12, :cond_e

    .line 804
    move-object v14, v9

    move-object/from16 v9, p2

    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v14, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    invoke-direct {v8, v9, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v13

    .line 805
    add-int/lit8 v15, v13, 0x2

    iget v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v11, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 807
    move/from16 v22, v3

    .end local v3    # "anns":I
    .local v22, "anns":I
    invoke-virtual {v8, v13, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v2, v0, v11, v3, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 805
    invoke-direct {v8, v15, v10, v7, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v13

    .line 803
    add-int/lit8 v12, v12, -0x1

    move-object v9, v14

    move/from16 v3, v22

    const/4 v11, 0x0

    goto :goto_5

    .end local v14    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v22    # "anns":I
    .restart local v3    # "anns":I
    .restart local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :cond_e
    move/from16 v22, v3

    move-object v14, v9

    move-object/from16 v9, p2

    .end local v3    # "anns":I
    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v14    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v22    # "anns":I
    goto :goto_6

    .line 802
    .end local v12    # "i":I
    .end local v13    # "v":I
    .end local v14    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v22    # "anns":I
    .restart local v3    # "anns":I
    .restart local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :cond_f
    move/from16 v22, v3

    move-object v14, v9

    move-object/from16 v9, p2

    .line 810
    .end local v3    # "anns":I
    .end local v9    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v14    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v22    # "anns":I
    :goto_6
    if-eqz v6, :cond_10

    .line 811
    invoke-virtual {v8, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    add-int/lit8 v12, v6, 0x2

    .local v12, "v":I
    :goto_7
    if-lez v0, :cond_10

    .line 812
    invoke-direct {v8, v9, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v3

    .line 813
    .end local v12    # "v":I
    .local v3, "v":I
    add-int/lit8 v11, v3, 0x2

    iget v12, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v13, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 815
    invoke-virtual {v8, v3, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v15

    .line 814
    const/4 v7, 0x0

    invoke-virtual {v2, v12, v13, v15, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v12

    .line 813
    const/4 v13, 0x1

    invoke-direct {v8, v11, v10, v13, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v12

    .line 811
    .end local v3    # "v":I
    .restart local v12    # "v":I
    add-int/lit8 v0, v0, -0x1

    const/4 v7, 0x1

    goto :goto_7

    .line 820
    .end local v0    # "i":I
    .end local v12    # "v":I
    :cond_10
    move-object v7, v14

    .end local v14    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_8
    if-eqz v7, :cond_11

    .line 821
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 822
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    const/4 v3, 0x0

    iput-object v3, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 823
    invoke-virtual {v2, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 824
    move-object v7, v0

    .line 825
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_8

    .line 828
    :cond_11
    invoke-virtual {v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;->visitEnd()V

    .line 830
    return v1
.end method

.method private readFrame(IZZLorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;)I
    .locals 17
    .param p1, "stackMap"    # I
    .param p2, "zip"    # Z
    .param p3, "unzip"    # Z
    .param p4, "frame"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;

    .line 2112
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    iget-object v8, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 2113
    .local v8, "c":[C
    iget-object v9, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 2116
    .local v9, "labels":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    const/16 v0, 0xff

    if-eqz p2, :cond_0

    .line 2117
    iget-object v1, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "stackMap":I
    .local v2, "stackMap":I
    aget-byte v1, v1, p1

    and-int/2addr v1, v0

    move v11, v1

    move v10, v2

    .local v1, "tag":I
    goto :goto_0

    .line 2119
    .end local v1    # "tag":I
    .end local v2    # "stackMap":I
    .restart local p1    # "stackMap":I
    :cond_0
    const/16 v1, 0xff

    .line 2120
    .restart local v1    # "tag":I
    const/4 v2, -0x1

    iput v2, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    move/from16 v10, p1

    move v11, v1

    .line 2122
    .end local v1    # "tag":I
    .end local p1    # "stackMap":I
    .local v10, "stackMap":I
    .local v11, "tag":I
    :goto_0
    const/4 v12, 0x0

    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    .line 2123
    const/4 v1, 0x3

    const/16 v2, 0x40

    if-ge v11, v2, :cond_1

    .line 2124
    move v0, v11

    .line 2125
    .local v0, "delta":I
    iput v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2126
    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    goto/16 :goto_6

    .line 2127
    .end local v0    # "delta":I
    :cond_1
    const/16 v2, 0x80

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-ge v11, v2, :cond_2

    .line 2128
    add-int/lit8 v12, v11, -0x40

    .line 2129
    .local v12, "delta":I
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v10

    .line 2130
    iput v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2131
    iput v14, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    move v0, v12

    goto/16 :goto_6

    .line 2133
    .end local v12    # "delta":I
    :cond_2
    invoke-virtual {v6, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v15

    .line 2134
    .local v15, "delta":I
    add-int/lit8 v10, v10, 0x2

    .line 2135
    const/16 v2, 0xf7

    if-ne v11, v2, :cond_3

    .line 2136
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v10

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v10

    .line 2137
    iput v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2138
    iput v14, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    move v0, v15

    goto/16 :goto_6

    .line 2139
    :cond_3
    const/16 v2, 0xf8

    const/4 v13, 0x2

    const/16 v3, 0xfb

    if-lt v11, v2, :cond_4

    if-ge v11, v3, :cond_4

    .line 2141
    iput v13, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2142
    rsub-int v0, v11, 0xfb

    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    .line 2143
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    sub-int/2addr v0, v1

    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    .line 2144
    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    goto :goto_1

    .line 2145
    :cond_4
    if-ne v11, v3, :cond_5

    .line 2146
    iput v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2147
    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    .line 2177
    :goto_1
    move v0, v15

    goto/16 :goto_6

    .line 2148
    :cond_5
    if-ge v11, v0, :cond_8

    .line 2149
    if-eqz p3, :cond_6

    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 2150
    .local v0, "local":I
    :goto_2
    add-int/lit16 v1, v11, -0xfb

    move v2, v0

    move v13, v10

    move v10, v1

    .end local v0    # "local":I
    .local v2, "local":I
    .local v10, "i":I
    .local v13, "stackMap":I
    :goto_3
    if-lez v10, :cond_7

    .line 2151
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v16, v2, 0x1

    .end local v2    # "local":I
    .local v16, "local":I
    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v13

    .line 2150
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v16

    goto :goto_3

    .line 2154
    .end local v10    # "i":I
    .end local v16    # "local":I
    .restart local v2    # "local":I
    :cond_7
    iput v14, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2155
    add-int/lit16 v0, v11, -0xfb

    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    .line 2156
    iget v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    add-int/2addr v0, v1

    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    .line 2157
    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    .line 2158
    .end local v2    # "local":I
    move v10, v13

    move v0, v15

    goto :goto_6

    .line 2159
    .end local v13    # "stackMap":I
    .local v10, "stackMap":I
    :cond_8
    iput v12, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->mode:I

    .line 2160
    invoke-virtual {v6, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2161
    .local v0, "n":I
    add-int/lit8 v10, v10, 0x2

    .line 2162
    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localDiff:I

    .line 2163
    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->localCount:I

    .line 2164
    const/4 v1, 0x0

    move v2, v1

    move v12, v10

    move v10, v0

    .end local v0    # "n":I
    .restart local v2    # "local":I
    .local v10, "n":I
    .local v12, "stackMap":I
    :goto_4
    if-lez v10, :cond_9

    .line 2165
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->local:[Ljava/lang/Object;

    add-int/lit8 v14, v2, 0x1

    .end local v2    # "local":I
    .local v14, "local":I
    move-object/from16 v0, p0

    move v3, v12

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v12

    .line 2164
    add-int/lit8 v10, v10, -0x1

    move v2, v14

    goto :goto_4

    .line 2168
    .end local v14    # "local":I
    :cond_9
    invoke-virtual {v6, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2169
    .end local v10    # "n":I
    .restart local v0    # "n":I
    add-int/2addr v12, v13

    .line 2170
    iput v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stackCount:I

    .line 2171
    const/4 v1, 0x0

    move v10, v0

    move v2, v1

    .end local v0    # "n":I
    .local v2, "stack":I
    .restart local v10    # "n":I
    :goto_5
    if-lez v10, :cond_a

    .line 2172
    iget-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->stack:[Ljava/lang/Object;

    add-int/lit8 v13, v2, 0x1

    .end local v2    # "stack":I
    .local v13, "stack":I
    move-object/from16 v0, p0

    move v3, v12

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I

    move-result v12

    .line 2171
    add-int/lit8 v10, v10, -0x1

    move v2, v13

    goto :goto_5

    .end local v13    # "stack":I
    .restart local v2    # "stack":I
    :cond_a
    move v10, v12

    move v0, v15

    .line 2177
    .end local v2    # "stack":I
    .end local v12    # "stackMap":I
    .end local v15    # "delta":I
    .local v0, "delta":I
    .local v10, "stackMap":I
    :goto_6
    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    .line 2178
    iget v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->offset:I

    invoke-virtual {v6, v1, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 2179
    return v10
.end method

.method private readFrameType([Ljava/lang/Object;II[C[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)I
    .locals 2
    .param p1, "frame"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "v"    # I
    .param p4, "buf"    # [C
    .param p5, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 2203
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "v":I
    .local v1, "v":I
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 2204
    .local p3, "type":I
    packed-switch p3, :pswitch_data_0

    .line 2231
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {p0, v0, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    move-result-object v0

    aput-object v0, p1, p2

    .line 2232
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2227
    :pswitch_0
    invoke-virtual {p0, v1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 2228
    add-int/lit8 v1, v1, 0x2

    .line 2229
    goto :goto_0

    .line 2224
    :pswitch_1
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2225
    goto :goto_0

    .line 2221
    :pswitch_2
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->NULL:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2222
    goto :goto_0

    .line 2218
    :pswitch_3
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->LONG:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2219
    goto :goto_0

    .line 2215
    :pswitch_4
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2216
    goto :goto_0

    .line 2212
    :pswitch_5
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2213
    goto :goto_0

    .line 2209
    :pswitch_6
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2210
    goto :goto_0

    .line 2206
    :pswitch_7
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v0, p1, p2

    .line 2207
    nop

    .line 2234
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I
    .locals 35
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p3, "u"    # I

    .line 847
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    iget-object v10, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 848
    .local v10, "c":[C
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    iput v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    .line 849
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {v8, v1, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->name:Ljava/lang/String;

    .line 850
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v8, v1, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->desc:Ljava/lang/String;

    .line 851
    add-int/lit8 v0, v0, 0x6

    .line 854
    .end local p3    # "u":I
    .local v0, "u":I
    const/4 v1, 0x0

    .line 855
    .local v1, "code":I
    const/4 v2, 0x0

    .line 856
    .local v2, "exception":I
    const/4 v3, 0x0

    .line 857
    .local v3, "exceptions":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 858
    .local v4, "signature":Ljava/lang/String;
    const/4 v5, 0x0

    .line 859
    .local v5, "methodParameters":I
    const/4 v6, 0x0

    .line 860
    .local v6, "anns":I
    const/4 v7, 0x0

    .line 861
    .local v7, "ianns":I
    const/4 v11, 0x0

    .line 862
    .local v11, "tanns":I
    const/4 v12, 0x0

    .line 863
    .local v12, "itanns":I
    const/4 v13, 0x0

    .line 864
    .local v13, "dann":I
    const/4 v14, 0x0

    .line 865
    .local v14, "mpanns":I
    const/4 v15, 0x0

    .line 866
    .local v15, "impanns":I
    move/from16 p3, v0

    .line 867
    .local p3, "firstAttribute":I
    const/16 v16, 0x0

    .line 869
    .local v16, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v17

    move/from16 v31, v11

    move v11, v0

    move-object/from16 v0, v16

    move/from16 v16, v5

    move/from16 v5, v31

    move/from16 v32, v12

    move v12, v1

    move v1, v15

    move-object v15, v4

    move/from16 v4, v32

    move/from16 v33, v13

    move v13, v2

    move v2, v14

    move-object v14, v3

    move/from16 v3, v33

    move/from16 v34, v7

    move v7, v6

    move/from16 v6, v34

    .local v0, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v1, "impanns":I
    .local v2, "mpanns":I
    .local v3, "dann":I
    .local v4, "itanns":I
    .local v5, "tanns":I
    .local v6, "ianns":I
    .local v7, "anns":I
    .local v11, "u":I
    .local v12, "code":I
    .local v13, "exception":I
    .local v14, "exceptions":[Ljava/lang/String;
    .local v15, "signature":Ljava/lang/String;
    .local v16, "methodParameters":I
    .local v17, "i":I
    :goto_0
    move/from16 v18, v6

    .end local v6    # "ianns":I
    .local v18, "ianns":I
    if-lez v17, :cond_10

    .line 870
    add-int/lit8 v6, v11, 0x2

    invoke-virtual {v8, v6, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 873
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v20, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    const-string v0, "Code"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    iget v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    const/16 v19, 0x1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 875
    add-int/lit8 v0, v11, 0x8

    move v12, v0

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v12    # "code":I
    .local v0, "code":I
    goto/16 :goto_3

    .line 874
    .end local v0    # "code":I
    .restart local v12    # "code":I
    :cond_0
    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 877
    :cond_1
    const-string v0, "Exceptions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 878
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 879
    .end local v14    # "exceptions":[Ljava/lang/String;
    .local v0, "exceptions":[Ljava/lang/String;
    add-int/lit8 v13, v11, 0xa

    .line 880
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v19, v1

    .end local v1    # "impanns":I
    .local v19, "impanns":I
    array-length v1, v0

    if-ge v14, v1, :cond_2

    .line 881
    invoke-virtual {v8, v13, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    .line 882
    add-int/lit8 v13, v13, 0x2

    .line 880
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v19

    goto :goto_1

    :cond_2
    move-object v14, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v14    # "j":I
    goto/16 :goto_3

    .line 884
    .end local v0    # "exceptions":[Ljava/lang/String;
    .end local v19    # "impanns":I
    .restart local v1    # "impanns":I
    .local v14, "exceptions":[Ljava/lang/String;
    :cond_3
    move/from16 v19, v1

    .end local v1    # "impanns":I
    .restart local v19    # "impanns":I
    const-string v0, "Signature"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 885
    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v15    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_3

    .line 886
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v15    # "signature":Ljava/lang/String;
    :cond_4
    const-string v0, "Deprecated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 887
    iget v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v26, v19

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 888
    :cond_5
    nop

    .line 889
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 890
    add-int/lit8 v0, v11, 0x8

    move v7, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v7    # "anns":I
    .local v0, "anns":I
    goto/16 :goto_3

    .line 891
    .end local v0    # "anns":I
    .restart local v7    # "anns":I
    :cond_6
    nop

    .line 892
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 893
    add-int/lit8 v0, v11, 0x8

    move v5, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v5    # "tanns":I
    .local v0, "tanns":I
    goto/16 :goto_3

    .line 894
    .end local v0    # "tanns":I
    .restart local v5    # "tanns":I
    :cond_7
    const-string v0, "AnnotationDefault"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 895
    add-int/lit8 v0, v11, 0x8

    move v3, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v3    # "dann":I
    .local v0, "dann":I
    goto/16 :goto_3

    .line 896
    .end local v0    # "dann":I
    .restart local v3    # "dann":I
    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 897
    iget v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    const v1, 0x41000

    or-int/2addr v0, v1

    iput v0, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v26, v19

    move v12, v7

    move/from16 v31, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v20

    move/from16 v20, v13

    move/from16 v13, v31

    goto/16 :goto_2

    .line 899
    :cond_9
    nop

    .line 900
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 901
    add-int/lit8 v0, v11, 0x8

    move-object/from16 v18, v6

    move/from16 v1, v19

    move v6, v0

    move-object/from16 v0, v20

    .end local v18    # "ianns":I
    .local v0, "ianns":I
    goto/16 :goto_3

    .line 902
    .end local v0    # "ianns":I
    .restart local v18    # "ianns":I
    :cond_a
    nop

    .line 903
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 904
    add-int/lit8 v0, v11, 0x8

    move v4, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v4    # "itanns":I
    .local v0, "itanns":I
    goto/16 :goto_3

    .line 905
    .end local v0    # "itanns":I
    .restart local v4    # "itanns":I
    :cond_b
    nop

    .line 906
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 907
    add-int/lit8 v0, v11, 0x8

    move v2, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v2    # "mpanns":I
    .local v0, "mpanns":I
    goto/16 :goto_3

    .line 908
    .end local v0    # "mpanns":I
    .restart local v2    # "mpanns":I
    :cond_c
    nop

    .line 909
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 910
    add-int/lit8 v0, v11, 0x8

    move v1, v0

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v19    # "impanns":I
    .local v0, "impanns":I
    goto/16 :goto_3

    .line 911
    .end local v0    # "impanns":I
    .restart local v19    # "impanns":I
    :cond_d
    const-string v0, "MethodParameters"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 912
    add-int/lit8 v0, v11, 0x8

    move/from16 v16, v0

    move/from16 v1, v19

    move-object/from16 v0, v20

    move/from16 v31, v18

    move-object/from16 v18, v6

    move/from16 v6, v31

    .end local v16    # "methodParameters":I
    .local v0, "methodParameters":I
    goto/16 :goto_3

    .line 914
    .end local v0    # "methodParameters":I
    .restart local v16    # "methodParameters":I
    :cond_e
    iget-object v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    add-int/lit8 v21, v11, 0x8

    add-int/lit8 v0, v11, 0x4

    .line 915
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v22

    const/16 v23, -0x1

    const/16 v24, 0x0

    .line 914
    move-object/from16 v25, v20

    .end local v20    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v25, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    move-object/from16 v0, p0

    move/from16 v26, v19

    .end local v19    # "impanns":I
    .local v26, "impanns":I
    move/from16 v27, v2

    .end local v2    # "mpanns":I
    .local v27, "mpanns":I
    move-object v2, v6

    move/from16 v28, v3

    .end local v3    # "dann":I
    .local v28, "dann":I
    move/from16 v3, v21

    move/from16 v29, v4

    .end local v4    # "itanns":I
    .local v29, "itanns":I
    move/from16 v4, v22

    move/from16 v30, v5

    .end local v5    # "tanns":I
    .local v30, "tanns":I
    move-object v5, v10

    move/from16 v20, v13

    move/from16 v13, v18

    move-object/from16 v18, v6

    .end local v6    # "attrName":Ljava/lang/String;
    .local v13, "ianns":I
    .local v18, "attrName":Ljava/lang/String;
    .local v20, "exception":I
    move/from16 v6, v23

    move/from16 v21, v12

    move v12, v7

    .end local v7    # "anns":I
    .local v12, "anns":I
    .local v21, "code":I
    move-object/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v0

    .line 916
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    if-eqz v0, :cond_f

    .line 917
    move-object/from16 v6, v25

    .end local v25    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v6, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    iput-object v6, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 918
    move-object v1, v0

    move v7, v12

    move v6, v13

    move/from16 v13, v20

    move/from16 v12, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    .end local v6    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v1, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_3

    .line 916
    .end local v1    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v25    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :cond_f
    move-object/from16 v6, v25

    .line 921
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v21    # "code":I
    .end local v25    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v26    # "impanns":I
    .end local v27    # "mpanns":I
    .end local v28    # "dann":I
    .end local v29    # "itanns":I
    .end local v30    # "tanns":I
    .local v1, "impanns":I
    .restart local v2    # "mpanns":I
    .restart local v3    # "dann":I
    .restart local v4    # "itanns":I
    .restart local v5    # "tanns":I
    .local v6, "attrName":Ljava/lang/String;
    .restart local v7    # "anns":I
    .local v12, "code":I
    .local v13, "exception":I
    .local v18, "ianns":I
    .local v20, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_2
    move-object v0, v6

    move v7, v12

    move v6, v13

    move/from16 v13, v20

    move/from16 v12, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    .end local v20    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v0, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v6, "ianns":I
    .local v18, "attrName":Ljava/lang/String;
    :goto_3
    move-object/from16 v19, v0

    .end local v0    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v19, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    add-int/lit8 v0, v11, 0x4

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    .line 869
    .end local v18    # "attrName":Ljava/lang/String;
    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, v19

    goto/16 :goto_0

    .end local v6    # "ianns":I
    .end local v19    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v0    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v18, "ianns":I
    :cond_10
    move-object v6, v0

    move/from16 v26, v1

    move/from16 v27, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v21, v12

    move/from16 v20, v13

    move/from16 v13, v18

    move v12, v7

    .line 923
    .end local v0    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v1    # "impanns":I
    .end local v2    # "mpanns":I
    .end local v3    # "dann":I
    .end local v4    # "itanns":I
    .end local v5    # "tanns":I
    .end local v7    # "anns":I
    .end local v17    # "i":I
    .end local v18    # "ianns":I
    .local v6, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v12, "anns":I
    .local v13, "ianns":I
    .local v20, "exception":I
    .restart local v21    # "code":I
    .restart local v26    # "impanns":I
    .restart local v27    # "mpanns":I
    .restart local v28    # "dann":I
    .restart local v29    # "itanns":I
    .restart local v30    # "tanns":I
    add-int/lit8 v11, v11, 0x2

    .line 926
    iget v1, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->access:I

    iget-object v2, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->name:Ljava/lang/String;

    iget-object v3, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->desc:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v4, v15

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    move-result-object v0

    .line 928
    .local v0, "mv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    if-nez v0, :cond_11

    .line 929
    return v11

    .line 942
    :cond_11
    instance-of v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    if-eqz v1, :cond_18

    .line 943
    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;

    .line 944
    .local v1, "mw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget-object v3, v3, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->cr:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;

    if-ne v3, v8, :cond_17

    iget-object v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->signature:Ljava/lang/String;

    if-ne v15, v3, :cond_17

    .line 945
    const/4 v3, 0x0

    .line 946
    .local v3, "sameExceptions":Z
    if-nez v14, :cond_13

    .line 947
    iget v4, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    :goto_4
    move v3, v4

    goto :goto_6

    .line 948
    :cond_13
    array-length v4, v14

    iget v5, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptionCount:I

    if-ne v4, v5, :cond_15

    .line 949
    const/4 v3, 0x1

    .line 950
    array-length v4, v14

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "j":I
    :goto_5
    if-ltz v4, :cond_15

    .line 951
    add-int/lit8 v5, v20, -0x2

    .line 952
    .end local v20    # "exception":I
    .local v5, "exception":I
    iget-object v7, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->exceptions:[I

    aget v7, v7, v4

    invoke-virtual {v8, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    if-eq v7, v2, :cond_14

    .line 953
    const/4 v3, 0x0

    .line 954
    move/from16 v20, v5

    goto :goto_6

    .line 950
    :cond_14
    add-int/lit8 v4, v4, -0x1

    move/from16 v20, v5

    goto :goto_5

    .line 958
    .end local v4    # "j":I
    .end local v5    # "exception":I
    .restart local v20    # "exception":I
    :cond_15
    :goto_6
    if-eqz v3, :cond_16

    .line 964
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .local v2, "firstAttribute":I
    iput v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderOffset:I

    .line 965
    sub-int v4, v11, v2

    iput v4, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;->classReaderLength:I

    .line 966
    return v11

    .line 958
    .end local v2    # "firstAttribute":I
    .restart local p3    # "firstAttribute":I
    :cond_16
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    goto :goto_7

    .line 944
    .end local v2    # "firstAttribute":I
    .end local v3    # "sameExceptions":Z
    .restart local p3    # "firstAttribute":I
    :cond_17
    move/from16 v2, p3

    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    goto :goto_7

    .line 942
    .end local v1    # "mw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodWriter;
    .end local v2    # "firstAttribute":I
    .restart local p3    # "firstAttribute":I
    :cond_18
    move/from16 v2, p3

    .line 972
    .end local p3    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :goto_7
    if-eqz v16, :cond_19

    .line 973
    iget-object v1, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    aget-byte v1, v1, v16

    and-int/lit16 v1, v1, 0xff

    .local v1, "i":I
    add-int/lit8 v3, v16, 0x1

    .local v3, "v":I
    :goto_8
    if-lez v1, :cond_19

    .line 974
    invoke-virtual {v8, v3, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v8, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    .line 973
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x4

    goto :goto_8

    .line 979
    .end local v1    # "i":I
    .end local v3    # "v":I
    :cond_19
    const/4 v1, 0x0

    move/from16 v3, v28

    .end local v28    # "dann":I
    .local v3, "dann":I
    if-eqz v3, :cond_1a

    .line 980
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotationDefault()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v4

    .line 981
    .local v4, "dv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    invoke-direct {v8, v3, v10, v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValue(I[CLjava/lang/String;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    .line 982
    if-eqz v4, :cond_1a

    .line 983
    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 986
    .end local v4    # "dv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    :cond_1a
    if-eqz v12, :cond_1c

    .line 987
    invoke-virtual {v8, v12}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .local v4, "i":I
    add-int/lit8 v7, v12, 0x2

    .local v7, "v":I
    :goto_9
    if-lez v4, :cond_1b

    .line 988
    add-int/lit8 v5, v7, 0x2

    .line 989
    invoke-virtual {v8, v7, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "firstAttribute":I
    .local v18, "firstAttribute":I
    invoke-virtual {v0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v1

    .line 988
    invoke-direct {v8, v5, v10, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v7

    .line 987
    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v18

    const/4 v1, 0x0

    goto :goto_9

    .end local v18    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :cond_1b
    move/from16 v18, v2

    .end local v2    # "firstAttribute":I
    .restart local v18    # "firstAttribute":I
    goto :goto_a

    .line 986
    .end local v4    # "i":I
    .end local v7    # "v":I
    .end local v18    # "firstAttribute":I
    .restart local v2    # "firstAttribute":I
    :cond_1c
    move/from16 v18, v2

    .line 992
    .end local v2    # "firstAttribute":I
    .restart local v18    # "firstAttribute":I
    :goto_a
    if-eqz v13, :cond_1d

    .line 993
    invoke-virtual {v8, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v13, 0x2

    .local v2, "v":I
    :goto_b
    if-lez v1, :cond_1d

    .line 994
    add-int/lit8 v4, v2, 0x2

    .line 995
    invoke-virtual {v8, v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v5

    .line 994
    const/4 v7, 0x1

    invoke-direct {v8, v4, v10, v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v2

    .line 993
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 998
    .end local v1    # "i":I
    .end local v2    # "v":I
    :cond_1d
    move/from16 v5, v30

    .end local v30    # "tanns":I
    .local v5, "tanns":I
    if-eqz v5, :cond_1f

    .line 999
    invoke-virtual {v8, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v5, 0x2

    .restart local v2    # "v":I
    :goto_c
    if-lez v1, :cond_1e

    .line 1000
    invoke-direct {v8, v9, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 1001
    add-int/lit8 v4, v2, 0x2

    iget v7, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    move/from16 v28, v3

    .end local v3    # "dann":I
    .restart local v28    # "dann":I
    iget-object v3, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 1003
    move/from16 v30, v5

    .end local v5    # "tanns":I
    .restart local v30    # "tanns":I
    invoke-virtual {v8, v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 1002
    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v22, "v":I
    invoke-virtual {v0, v7, v3, v5, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v3

    .line 1001
    invoke-direct {v8, v4, v10, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v3

    .line 999
    .end local v22    # "v":I
    .local v3, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v3

    move/from16 v3, v28

    move/from16 v5, v30

    goto :goto_c

    .end local v28    # "dann":I
    .end local v30    # "tanns":I
    .restart local v2    # "v":I
    .local v3, "dann":I
    .restart local v5    # "tanns":I
    :cond_1e
    move/from16 v28, v3

    move/from16 v30, v5

    .end local v3    # "dann":I
    .end local v5    # "tanns":I
    .restart local v28    # "dann":I
    .restart local v30    # "tanns":I
    goto :goto_d

    .line 998
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v28    # "dann":I
    .end local v30    # "tanns":I
    .restart local v3    # "dann":I
    .restart local v5    # "tanns":I
    :cond_1f
    move/from16 v28, v3

    move/from16 v30, v5

    .line 1006
    .end local v3    # "dann":I
    .end local v5    # "tanns":I
    .restart local v28    # "dann":I
    .restart local v30    # "tanns":I
    :goto_d
    move/from16 v4, v29

    .end local v29    # "itanns":I
    .local v4, "itanns":I
    if-eqz v4, :cond_21

    .line 1007
    invoke-virtual {v8, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v2, v4, 0x2

    .restart local v2    # "v":I
    :goto_e
    if-lez v1, :cond_20

    .line 1008
    invoke-direct {v8, v9, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 1009
    add-int/lit8 v3, v2, 0x2

    iget v5, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v7, v9, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 1011
    move/from16 v29, v4

    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    invoke-virtual {v8, v2, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 1010
    move/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "v":I
    .restart local v22    # "v":I
    invoke-virtual {v0, v5, v7, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v4

    .line 1009
    const/4 v2, 0x1

    invoke-direct {v8, v3, v10, v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v3

    .line 1007
    .end local v22    # "v":I
    .local v3, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v3

    move/from16 v4, v29

    goto :goto_e

    .end local v3    # "v":I
    .end local v29    # "itanns":I
    .restart local v2    # "v":I
    .restart local v4    # "itanns":I
    :cond_20
    move/from16 v29, v4

    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    goto :goto_f

    .line 1006
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v29    # "itanns":I
    .restart local v4    # "itanns":I
    :cond_21
    move/from16 v29, v4

    .line 1014
    .end local v4    # "itanns":I
    .restart local v29    # "itanns":I
    :goto_f
    move/from16 v2, v27

    .end local v27    # "mpanns":I
    .local v2, "mpanns":I
    if-eqz v2, :cond_22

    .line 1015
    const/4 v1, 0x1

    invoke-direct {v8, v0, v9, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readParameterAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)V

    .line 1017
    :cond_22
    move/from16 v1, v26

    .end local v26    # "impanns":I
    .local v1, "impanns":I
    if-eqz v1, :cond_23

    .line 1018
    const/4 v3, 0x0

    invoke-direct {v8, v0, v9, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readParameterAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)V

    .line 1022
    :cond_23
    :goto_10
    if-eqz v6, :cond_24

    .line 1023
    iget-object v3, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 1024
    .local v3, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    const/4 v4, 0x0

    iput-object v4, v6, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 1025
    invoke-virtual {v0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 1026
    move-object v6, v3

    .line 1027
    .end local v3    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_10

    .line 1030
    :cond_24
    if-eqz v21, :cond_25

    .line 1031
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitCode()V

    .line 1032
    move/from16 v3, v21

    .end local v21    # "code":I
    .local v3, "code":I
    invoke-direct {v8, v0, v9, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readCode(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)V

    goto :goto_11

    .line 1030
    .end local v3    # "code":I
    .restart local v21    # "code":I
    :cond_25
    move/from16 v3, v21

    .line 1036
    .end local v21    # "code":I
    .restart local v3    # "code":I
    :goto_11
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitEnd()V

    .line 1038
    return v11
.end method

.method private readParameterAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)V
    .locals 8
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p3, "v"    # I
    .param p4, "visible"    # Z

    .line 1808
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "v":I
    .local v1, "v":I
    aget-byte p3, v0, p3

    and-int/lit16 p3, p3, 0xff

    .line 1815
    .local p3, "n":I
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->desc:Ljava/lang/String;

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p3

    .line 1817
    .local v0, "synthetics":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1819
    const/4 v3, 0x0

    const-string v4, "Ljava/lang/Synthetic;"

    invoke-virtual {p1, v2, v4, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v3

    .line 1820
    .local v3, "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    if-eqz v3, :cond_0

    .line 1821
    invoke-virtual {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 1817
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1824
    .end local v3    # "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    :cond_1
    iget-object v3, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 1825
    .local v3, "c":[C
    :goto_1
    add-int v4, p3, v0

    if-ge v2, v4, :cond_3

    .line 1826
    invoke-virtual {p0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 1827
    .local v4, "j":I
    add-int/lit8 v1, v1, 0x2

    .line 1828
    :goto_2
    if-lez v4, :cond_2

    .line 1829
    invoke-virtual {p0, v1, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v5

    .line 1830
    .local v5, "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x1

    invoke-direct {p0, v6, v3, v7, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v1

    .line 1828
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1825
    .end local v4    # "j":I
    .end local v5    # "av":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1833
    :cond_3
    return-void
.end method

.method private readTypeAnnotations(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;IZ)[I
    .locals 9
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;
    .param p2, "context"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    .param p3, "u"    # I
    .param p4, "visible"    # Z

    .line 1655
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 1656
    .local v0, "c":[C
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    new-array v1, v1, [I

    .line 1657
    .local v1, "offsets":[I
    add-int/lit8 p3, p3, 0x2

    .line 1658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 1659
    aput p3, v1, v2

    .line 1660
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    .line 1661
    .local v3, "target":I
    ushr-int/lit8 v4, v3, 0x18

    sparse-switch v4, :sswitch_data_0

    .line 1700
    add-int/lit8 p3, p3, 0x3

    goto :goto_2

    .line 1688
    :sswitch_0
    add-int/lit8 p3, p3, 0x4

    .line 1689
    goto :goto_2

    .line 1674
    :sswitch_1
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .local v4, "j":I
    :goto_1
    if-lez v4, :cond_0

    .line 1675
    add-int/lit8 v5, p3, 0x3

    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 1676
    .local v5, "start":I
    add-int/lit8 v6, p3, 0x5

    invoke-virtual {p0, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v6

    .line 1677
    .local v6, "length":I
    iget-object v7, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v5, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1678
    add-int v7, v5, v6

    iget-object v8, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->labels:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-virtual {p0, v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 1679
    nop

    .end local v5    # "start":I
    .end local v6    # "length":I
    add-int/lit8 p3, p3, 0x6

    .line 1674
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1681
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 p3, p3, 0x3

    .line 1682
    goto :goto_2

    .line 1670
    :sswitch_2
    add-int/lit8 p3, p3, 0x1

    .line 1671
    goto :goto_2

    .line 1665
    :sswitch_3
    add-int/lit8 p3, p3, 0x2

    .line 1666
    nop

    .line 1703
    :goto_2
    invoke-virtual {p0, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v4

    .line 1704
    .local v4, "pathLength":I
    ushr-int/lit8 v5, v3, 0x18

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_2

    .line 1705
    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    invoke-direct {v7, v5, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;-><init>([BI)V

    :goto_3
    move-object v5, v7

    .line 1706
    .local v5, "path":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v8

    add-int/2addr p3, v6

    .line 1707
    add-int/lit8 v6, p3, 0x2

    .line 1709
    invoke-virtual {p0, p3, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 1708
    invoke-virtual {p1, v3, v5, v7, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v7

    .line 1707
    invoke-direct {p0, v6, v0, v8, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result p3

    .line 1710
    .end local v5    # "path":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    goto :goto_4

    .line 1711
    :cond_2
    add-int/lit8 v5, p3, 0x3

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v5, v0, v8, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result p3

    .line 1658
    .end local v3    # "target":I
    .end local v4    # "pathLength":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1714
    .end local v2    # "i":I
    :cond_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .line 2475
    add-int v0, p1, p2

    .line 2476
    .local v0, "endIndex":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 2477
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 2479
    .local v2, "strLen":I
    const/4 v3, 0x0

    .line 2480
    .local v3, "st":I
    const/4 v4, 0x0

    .line 2481
    .local v4, "cc":C
    :goto_0
    if-ge p1, v0, :cond_2

    .line 2482
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "index":I
    .local v5, "index":I
    aget-byte p1, v1, p1

    .line 2483
    .local p1, "c":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2503
    :pswitch_0
    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 v7, p1, 0x3f

    or-int/2addr v6, v7

    int-to-char v4, v6

    .line 2504
    const/4 v3, 0x1

    goto :goto_1

    .line 2498
    :pswitch_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .local v6, "strLen":I
    shl-int/lit8 v7, v4, 0x6

    and-int/lit8 v8, p1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p3, v2

    .line 2499
    const/4 v2, 0x0

    .line 2500
    .end local v3    # "st":I
    .local v2, "st":I
    move v3, v2

    move v2, v6

    goto :goto_1

    .line 2485
    .end local v6    # "strLen":I
    .local v2, "strLen":I
    .restart local v3    # "st":I
    :pswitch_2
    and-int/lit16 p1, p1, 0xff

    .line 2486
    const/16 v6, 0x80

    if-ge p1, v6, :cond_0

    .line 2487
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .restart local v6    # "strLen":I
    int-to-char v7, p1

    aput-char v7, p3, v2

    move v2, v6

    goto :goto_1

    .line 2488
    .end local v6    # "strLen":I
    .restart local v2    # "strLen":I
    :cond_0
    const/16 v6, 0xe0

    if-ge p1, v6, :cond_1

    const/16 v6, 0xbf

    if-le p1, v6, :cond_1

    .line 2489
    and-int/lit8 v6, p1, 0x1f

    int-to-char v4, v6

    .line 2490
    const/4 v3, 0x1

    goto :goto_1

    .line 2492
    :cond_1
    and-int/lit8 v6, p1, 0xf

    int-to-char v4, v6

    .line 2493
    const/4 v3, 0x2

    .line 2495
    nop

    .line 2505
    :goto_1
    move p1, v5

    goto :goto_0

    .line 2508
    .end local v5    # "index":I
    .local p1, "index":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;I)V
    .locals 1
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "flags"    # I

    .line 521
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;I)V

    .line 522
    return-void
.end method

.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;I)V
    .locals 42
    .param p1, "classVisitor"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;
    .param p2, "attrs"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .param p3, "flags"    # I

    .line 547
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    iget v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    .line 548
    .local v0, "u":I
    iget v1, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    new-array v11, v1, [C

    .line 550
    .local v11, "c":[C
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;

    invoke-direct {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;-><init>()V

    move-object v12, v1

    .line 551
    .local v12, "context":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;
    move-object/from16 v13, p2

    iput-object v13, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->attrs:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 552
    iput v10, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->flags:I

    .line 553
    iput-object v11, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->buffer:[C

    .line 556
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 557
    .local v1, "access":I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v8, v2, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v14

    .line 558
    .local v14, "name":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v8, v2, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v15

    .line 559
    .local v15, "superClass":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .line 560
    .local v7, "interfaces":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x8

    .line 561
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v7

    if-ge v2, v3, :cond_0

    .line 562
    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 563
    add-int/lit8 v0, v0, 0x2

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 568
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x0

    .line 569
    .local v3, "sourceFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 570
    .local v4, "sourceDebug":Ljava/lang/String;
    const/4 v5, 0x0

    .line 571
    .local v5, "enclosingOwner":Ljava/lang/String;
    const/4 v6, 0x0

    .line 572
    .local v6, "enclosingName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 573
    .local v16, "enclosingDesc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 574
    .local v17, "anns":I
    const/16 v18, 0x0

    .line 575
    .local v18, "ianns":I
    const/16 v19, 0x0

    .line 576
    .local v19, "tanns":I
    const/16 v20, 0x0

    .line 577
    .local v20, "itanns":I
    const/16 v21, 0x0

    .line 578
    .local v21, "innerClasses":I
    const/16 v22, 0x0

    .line 580
    .local v22, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    invoke-direct/range {p0 .. p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->getAttributes()I

    move-result v0

    .line 581
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v23

    move/from16 v24, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move-object/from16 v27, v22

    move-object/from16 v38, v16

    move/from16 v16, v0

    move/from16 v0, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v38

    move/from16 v39, v17

    move/from16 v17, v1

    move/from16 v1, v39

    move-object/from16 v40, v6

    move-object v6, v3

    move-object/from16 v3, v40

    move-object/from16 v41, v5

    move-object v5, v4

    move-object/from16 v4, v41

    .end local v19    # "tanns":I
    .end local v20    # "itanns":I
    .end local v21    # "innerClasses":I
    .end local v22    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v0, "ianns":I
    .local v1, "anns":I
    .local v2, "enclosingDesc":Ljava/lang/String;
    .local v3, "enclosingName":Ljava/lang/String;
    .local v4, "enclosingOwner":Ljava/lang/String;
    .local v5, "sourceDebug":Ljava/lang/String;
    .local v6, "sourceFile":Ljava/lang/String;
    .local v16, "u":I
    .local v17, "access":I
    .local v18, "signature":Ljava/lang/String;
    .local v23, "i":I
    .local v24, "tanns":I
    .local v25, "itanns":I
    .local v26, "innerClasses":I
    .local v27, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_1
    move-object/from16 v19, v7

    .end local v7    # "interfaces":[Ljava/lang/String;
    .local v19, "interfaces":[Ljava/lang/String;
    if-lez v23, :cond_10

    .line 582
    add-int/lit8 v7, v16, 0x2

    invoke-virtual {v8, v7, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, "attrName":Ljava/lang/String;
    move/from16 v21, v0

    .end local v0    # "ianns":I
    .local v21, "ianns":I
    const-string v0, "SourceFile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v6    # "sourceFile":Ljava/lang/String;
    .local v0, "sourceFile":Ljava/lang/String;
    goto/16 :goto_5

    .line 587
    .end local v0    # "sourceFile":Ljava/lang/String;
    .restart local v6    # "sourceFile":Ljava/lang/String;
    :cond_1
    const-string v0, "InnerClasses"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    add-int/lit8 v0, v16, 0x8

    move/from16 v26, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v26    # "innerClasses":I
    .local v0, "innerClasses":I
    goto/16 :goto_5

    .line 589
    .end local v0    # "innerClasses":I
    .restart local v26    # "innerClasses":I
    :cond_2
    const-string v0, "EnclosingMethod"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 590
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    .line 591
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .local v0, "enclosingOwner":Ljava/lang/String;
    add-int/lit8 v4, v16, 0xa

    invoke-virtual {v8, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 592
    .local v4, "item":I
    if-eqz v4, :cond_3

    .line 593
    move-object/from16 v20, v0

    .end local v0    # "enclosingOwner":Ljava/lang/String;
    .local v20, "enclosingOwner":Ljava/lang/String;
    iget-object v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v0, v0, v4

    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 594
    iget-object v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 592
    .end local v20    # "enclosingOwner":Ljava/lang/String;
    .restart local v0    # "enclosingOwner":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v0

    .line 596
    .end local v0    # "enclosingOwner":Ljava/lang/String;
    .end local v4    # "item":I
    .restart local v20    # "enclosingOwner":Ljava/lang/String;
    :goto_2
    move-object/from16 v4, v20

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    goto/16 :goto_5

    .end local v20    # "enclosingOwner":Ljava/lang/String;
    .local v4, "enclosingOwner":Ljava/lang/String;
    :cond_4
    const-string v0, "Signature"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 597
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v18    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    goto/16 :goto_5

    .line 598
    .end local v0    # "signature":Ljava/lang/String;
    .restart local v18    # "signature":Ljava/lang/String;
    :cond_5
    nop

    .line 599
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 600
    add-int/lit8 v0, v16, 0x8

    move v1, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v1    # "anns":I
    .local v0, "anns":I
    goto/16 :goto_5

    .line 601
    .end local v0    # "anns":I
    .restart local v1    # "anns":I
    :cond_6
    nop

    .line 602
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 603
    add-int/lit8 v0, v16, 0x8

    move/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v24    # "tanns":I
    .local v0, "tanns":I
    goto/16 :goto_5

    .line 604
    .end local v0    # "tanns":I
    .restart local v24    # "tanns":I
    :cond_7
    const-string v0, "Deprecated"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 605
    const/high16 v0, 0x20000

    or-int v0, v17, v0

    move/from16 v17, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v17    # "access":I
    .local v0, "access":I
    goto/16 :goto_5

    .line 606
    .end local v0    # "access":I
    .restart local v17    # "access":I
    :cond_8
    const-string v0, "Synthetic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 607
    const v0, 0x41000

    or-int v0, v17, v0

    move/from16 v17, v0

    move/from16 v0, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v17    # "access":I
    .restart local v0    # "access":I
    goto/16 :goto_5

    .line 609
    .end local v0    # "access":I
    .restart local v17    # "access":I
    :cond_9
    const-string v0, "SourceDebugExtension"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    add-int/lit8 v0, v16, 0x4

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    .line 611
    .local v0, "len":I
    move/from16 v22, v1

    .end local v1    # "anns":I
    .local v22, "anns":I
    add-int/lit8 v1, v16, 0x8

    move-object/from16 v28, v2

    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .local v28, "enclosingDesc":Ljava/lang/String;
    new-array v2, v0, [C

    invoke-direct {v8, v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v0

    .line 612
    .end local v5    # "sourceDebug":Ljava/lang/String;
    .local v0, "sourceDebug":Ljava/lang/String;
    move-object v5, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    goto/16 :goto_5

    .end local v0    # "sourceDebug":Ljava/lang/String;
    .end local v22    # "anns":I
    .end local v28    # "enclosingDesc":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v5    # "sourceDebug":Ljava/lang/String;
    :cond_a
    move/from16 v22, v1

    move-object/from16 v28, v2

    .line 613
    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v22    # "anns":I
    .restart local v28    # "enclosingDesc":Ljava/lang/String;
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 614
    add-int/lit8 v0, v16, 0x8

    move-object/from16 v21, v19

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v19, v7

    .end local v21    # "ianns":I
    .local v0, "ianns":I
    goto/16 :goto_5

    .line 615
    .end local v0    # "ianns":I
    .restart local v21    # "ianns":I
    :cond_b
    nop

    .line 616
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 617
    add-int/lit8 v0, v16, 0x8

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v25    # "itanns":I
    .local v0, "itanns":I
    goto/16 :goto_5

    .line 618
    .end local v0    # "itanns":I
    .restart local v25    # "itanns":I
    :cond_c
    const-string v0, "BootstrapMethods"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 619
    add-int/lit8 v0, v16, 0x8

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    .line 620
    .local v0, "bootstrapMethods":[I
    const/4 v1, 0x0

    .local v1, "j":I
    add-int/lit8 v2, v16, 0xa

    .local v2, "v":I
    :goto_3
    move-object/from16 v29, v3

    .end local v3    # "enclosingName":Ljava/lang/String;
    .local v29, "enclosingName":Ljava/lang/String;
    array-length v3, v0

    if-ge v1, v3, :cond_d

    .line 621
    aput v2, v0, v1

    .line 622
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v8, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    const/16 v20, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 620
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v29

    goto :goto_3

    .line 624
    .end local v1    # "j":I
    .end local v2    # "v":I
    :cond_d
    iput-object v0, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->bootstrapMethods:[I

    .line 625
    .end local v0    # "bootstrapMethods":[I
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object v13, v6

    move/from16 v34, v21

    move/from16 v32, v22

    move-object/from16 v33, v28

    move-object/from16 v35, v29

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v27

    goto :goto_4

    .line 626
    .end local v29    # "enclosingName":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_e
    move-object/from16 v29, v3

    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v29    # "enclosingName":Ljava/lang/String;
    add-int/lit8 v3, v16, 0x8

    add-int/lit8 v0, v16, 0x4

    .line 627
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v20

    const/16 v30, -0x1

    const/16 v31, 0x0

    .line 626
    move/from16 v2, v21

    .end local v21    # "ianns":I
    .local v2, "ianns":I
    move-object/from16 v0, p0

    move/from16 v32, v22

    .end local v22    # "anns":I
    .local v32, "anns":I
    move-object/from16 v1, p2

    move/from16 v34, v2

    move-object/from16 v33, v28

    .end local v2    # "ianns":I
    .end local v28    # "enclosingDesc":Ljava/lang/String;
    .local v33, "enclosingDesc":Ljava/lang/String;
    .local v34, "ianns":I
    move-object v2, v7

    move-object/from16 v35, v29

    .end local v29    # "enclosingName":Ljava/lang/String;
    .local v35, "enclosingName":Ljava/lang/String;
    move-object/from16 v36, v4

    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .local v36, "enclosingOwner":Ljava/lang/String;
    move/from16 v4, v20

    move-object/from16 v37, v5

    .end local v5    # "sourceDebug":Ljava/lang/String;
    .local v37, "sourceDebug":Ljava/lang/String;
    move-object v5, v11

    move-object v13, v6

    .end local v6    # "sourceFile":Ljava/lang/String;
    .local v13, "sourceFile":Ljava/lang/String;
    move/from16 v6, v30

    move-object/from16 v21, v19

    move-object/from16 v19, v7

    .end local v7    # "attrName":Ljava/lang/String;
    .local v19, "attrName":Ljava/lang/String;
    .local v21, "interfaces":[Ljava/lang/String;
    move-object/from16 v7, v31

    invoke-direct/range {v0 .. v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAttribute([Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;Ljava/lang/String;II[CI[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    move-result-object v0

    .line 628
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    if-eqz v0, :cond_f

    .line 629
    move-object/from16 v7, v27

    .end local v27    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v7, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    iput-object v7, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 630
    move-object v1, v0

    move-object/from16 v27, v1

    move-object v6, v13

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v0, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    .end local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .local v1, "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_5

    .line 628
    .end local v1    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v27    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :cond_f
    move-object/from16 v7, v27

    .line 633
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v27    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_4
    move-object/from16 v27, v7

    move-object v6, v13

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v0, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    .end local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .end local v13    # "sourceFile":Ljava/lang/String;
    .end local v32    # "anns":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v34    # "ianns":I
    .end local v35    # "enclosingName":Ljava/lang/String;
    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .local v0, "ianns":I
    .local v1, "anns":I
    .local v2, "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    .restart local v4    # "enclosingOwner":Ljava/lang/String;
    .restart local v5    # "sourceDebug":Ljava/lang/String;
    .restart local v6    # "sourceFile":Ljava/lang/String;
    .restart local v27    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    :goto_5
    add-int/lit8 v7, v16, 0x4

    invoke-virtual {v8, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int v16, v16, v7

    .line 581
    .end local v19    # "attrName":Ljava/lang/String;
    add-int/lit8 v23, v23, -0x1

    move-object/from16 v13, p2

    move-object/from16 v7, v21

    goto/16 :goto_1

    .end local v21    # "interfaces":[Ljava/lang/String;
    .local v19, "interfaces":[Ljava/lang/String;
    :cond_10
    move/from16 v34, v0

    move/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object v13, v6

    move-object/from16 v21, v19

    move-object/from16 v7, v27

    .line 637
    .end local v0    # "ianns":I
    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .end local v4    # "enclosingOwner":Ljava/lang/String;
    .end local v5    # "sourceDebug":Ljava/lang/String;
    .end local v6    # "sourceFile":Ljava/lang/String;
    .end local v19    # "interfaces":[Ljava/lang/String;
    .end local v23    # "i":I
    .end local v27    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v7    # "attributes":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    .restart local v13    # "sourceFile":Ljava/lang/String;
    .restart local v21    # "interfaces":[Ljava/lang/String;
    .restart local v32    # "anns":I
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v34    # "ianns":I
    .restart local v35    # "enclosingName":Ljava/lang/String;
    .restart local v36    # "enclosingOwner":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    iget-object v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v1

    move-object/from16 v0, p1

    move/from16 v2, v17

    move-object v3, v14

    move-object/from16 v4, v18

    move-object v5, v15

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 641
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_12

    if-nez v13, :cond_11

    move-object/from16 v4, v37

    .end local v37    # "sourceDebug":Ljava/lang/String;
    .local v4, "sourceDebug":Ljava/lang/String;
    if-eqz v4, :cond_13

    goto :goto_6

    .end local v4    # "sourceDebug":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    :cond_11
    move-object/from16 v4, v37

    .line 643
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v4    # "sourceDebug":Ljava/lang/String;
    :goto_6
    invoke-virtual {v9, v13, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 641
    .end local v4    # "sourceDebug":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    :cond_12
    move-object/from16 v4, v37

    .line 647
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v4    # "sourceDebug":Ljava/lang/String;
    :cond_13
    :goto_7
    move-object/from16 v5, v36

    .end local v36    # "enclosingOwner":Ljava/lang/String;
    .local v5, "enclosingOwner":Ljava/lang/String;
    if-eqz v5, :cond_14

    .line 648
    move-object/from16 v2, v33

    move-object/from16 v3, v35

    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v35    # "enclosingName":Ljava/lang/String;
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    invoke-virtual {v9, v5, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 647
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v35    # "enclosingName":Ljava/lang/String;
    :cond_14
    move-object/from16 v2, v33

    move-object/from16 v3, v35

    .line 653
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v35    # "enclosingName":Ljava/lang/String;
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :goto_8
    move/from16 v1, v32

    .end local v32    # "anns":I
    .restart local v1    # "anns":I
    if-eqz v1, :cond_16

    .line 654
    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .local v0, "i":I
    add-int/lit8 v6, v1, 0x2

    .local v6, "v":I
    :goto_9
    if-lez v0, :cond_15

    .line 655
    move/from16 v32, v1

    .end local v1    # "anns":I
    .restart local v32    # "anns":I
    add-int/lit8 v1, v6, 0x2

    .line 656
    move-object/from16 v33, v2

    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    invoke-virtual {v8, v6, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v3

    const/4 v3, 0x1

    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v35    # "enclosingName":Ljava/lang/String;
    invoke-virtual {v9, v2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v2

    .line 655
    invoke-direct {v8, v1, v11, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v6

    .line 654
    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    goto :goto_9

    .end local v32    # "anns":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v35    # "enclosingName":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_15
    move/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v32    # "anns":I
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v35    # "enclosingName":Ljava/lang/String;
    goto :goto_a

    .line 653
    .end local v0    # "i":I
    .end local v6    # "v":I
    .end local v32    # "anns":I
    .end local v33    # "enclosingDesc":Ljava/lang/String;
    .end local v35    # "enclosingName":Ljava/lang/String;
    .restart local v1    # "anns":I
    .restart local v2    # "enclosingDesc":Ljava/lang/String;
    .restart local v3    # "enclosingName":Ljava/lang/String;
    :cond_16
    move/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    .line 659
    .end local v1    # "anns":I
    .end local v2    # "enclosingDesc":Ljava/lang/String;
    .end local v3    # "enclosingName":Ljava/lang/String;
    .restart local v32    # "anns":I
    .restart local v33    # "enclosingDesc":Ljava/lang/String;
    .restart local v35    # "enclosingName":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x0

    move/from16 v1, v34

    .end local v34    # "ianns":I
    .local v1, "ianns":I
    if-eqz v1, :cond_18

    .line 660
    invoke-virtual {v8, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    add-int/lit8 v3, v1, 0x2

    .local v3, "v":I
    :goto_b
    if-lez v2, :cond_17

    .line 661
    add-int/lit8 v6, v3, 0x2

    .line 662
    move/from16 v34, v1

    .end local v1    # "ianns":I
    .restart local v34    # "ianns":I
    invoke-virtual {v8, v3, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v1

    .line 661
    const/4 v0, 0x1

    invoke-direct {v8, v6, v11, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v3

    .line 660
    add-int/lit8 v2, v2, -0x1

    move/from16 v1, v34

    const/4 v0, 0x0

    goto :goto_b

    .end local v34    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_17
    move/from16 v34, v1

    .end local v1    # "ianns":I
    .restart local v34    # "ianns":I
    goto :goto_c

    .line 659
    .end local v2    # "i":I
    .end local v3    # "v":I
    .end local v34    # "ianns":I
    .restart local v1    # "ianns":I
    :cond_18
    move/from16 v34, v1

    .line 665
    .end local v1    # "ianns":I
    .restart local v34    # "ianns":I
    :goto_c
    move/from16 v0, v24

    .end local v24    # "tanns":I
    .local v0, "tanns":I
    if-eqz v0, :cond_1a

    .line 666
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .local v1, "i":I
    add-int/lit8 v24, v0, 0x2

    move/from16 v2, v24

    .local v2, "v":I
    :goto_d
    if-lez v1, :cond_19

    .line 667
    invoke-direct {v8, v12, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 668
    add-int/lit8 v3, v2, 0x2

    iget v6, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    move/from16 v22, v0

    .end local v0    # "tanns":I
    .local v22, "tanns":I
    iget-object v0, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 670
    move-object/from16 v37, v4

    .end local v4    # "sourceDebug":Ljava/lang/String;
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    invoke-virtual {v8, v2, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 669
    move/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "v":I
    .local v23, "v":I
    invoke-virtual {v9, v6, v0, v4, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 668
    invoke-direct {v8, v3, v11, v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v0

    .line 666
    .end local v23    # "v":I
    .local v0, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move/from16 v0, v22

    move-object/from16 v4, v37

    goto :goto_d

    .end local v22    # "tanns":I
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .local v0, "tanns":I
    .restart local v2    # "v":I
    .restart local v4    # "sourceDebug":Ljava/lang/String;
    :cond_19
    move/from16 v22, v0

    move-object/from16 v37, v4

    .end local v0    # "tanns":I
    .end local v4    # "sourceDebug":Ljava/lang/String;
    .restart local v22    # "tanns":I
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    goto :goto_e

    .line 665
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v22    # "tanns":I
    .end local v37    # "sourceDebug":Ljava/lang/String;
    .restart local v0    # "tanns":I
    .restart local v4    # "sourceDebug":Ljava/lang/String;
    :cond_1a
    move/from16 v22, v0

    move-object/from16 v37, v4

    .line 673
    .end local v0    # "tanns":I
    .end local v4    # "sourceDebug":Ljava/lang/String;
    .restart local v22    # "tanns":I
    .restart local v37    # "sourceDebug":Ljava/lang/String;
    :goto_e
    move/from16 v0, v25

    .end local v25    # "itanns":I
    .local v0, "itanns":I
    if-eqz v0, :cond_1c

    .line 674
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .restart local v1    # "i":I
    add-int/lit8 v25, v0, 0x2

    move/from16 v2, v25

    .restart local v2    # "v":I
    :goto_f
    if-lez v1, :cond_1b

    .line 675
    invoke-direct {v8, v12, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationTarget(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v2

    .line 676
    add-int/lit8 v3, v2, 0x2

    iget v4, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typeRef:I

    iget-object v6, v12, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;->typePath:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;

    .line 678
    move/from16 v23, v0

    .end local v0    # "itanns":I
    .local v23, "itanns":I
    invoke-virtual {v8, v2, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 677
    move/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "v":I
    .local v24, "v":I
    invoke-virtual {v9, v4, v6, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 676
    const/4 v4, 0x1

    invoke-direct {v8, v3, v11, v4, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readAnnotationValues(I[CZLorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)I

    move-result v0

    .line 674
    .end local v24    # "v":I
    .local v0, "v":I
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    move/from16 v0, v23

    goto :goto_f

    .end local v23    # "itanns":I
    .local v0, "itanns":I
    .restart local v2    # "v":I
    :cond_1b
    move/from16 v23, v0

    move v0, v2

    .end local v2    # "v":I
    .local v0, "v":I
    .restart local v23    # "itanns":I
    goto :goto_10

    .line 673
    .end local v1    # "i":I
    .end local v23    # "itanns":I
    .local v0, "itanns":I
    :cond_1c
    move/from16 v23, v0

    .line 683
    .end local v0    # "itanns":I
    .restart local v23    # "itanns":I
    :goto_10
    if-eqz v7, :cond_1d

    .line 684
    iget-object v0, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 685
    .local v0, "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    const/4 v1, 0x0

    iput-object v1, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 686
    invoke-virtual {v9, v7}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V

    .line 687
    move-object v7, v0

    .line 688
    .end local v0    # "attr":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;
    goto :goto_10

    .line 691
    :cond_1d
    move/from16 v0, v26

    .end local v26    # "innerClasses":I
    .local v0, "innerClasses":I
    if-eqz v0, :cond_1f

    .line 692
    add-int/lit8 v26, v0, 0x2

    .line 693
    .local v26, "v":I
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    move/from16 v2, v26

    .end local v26    # "v":I
    .restart local v1    # "i":I
    .restart local v2    # "v":I
    :goto_11
    if-lez v1, :cond_1e

    .line 694
    invoke-virtual {v8, v2, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    .line 695
    invoke-virtual {v8, v4, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v8, v6, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    move/from16 v19, v0

    .end local v0    # "innerClasses":I
    .local v19, "innerClasses":I
    add-int/lit8 v0, v2, 0x6

    .line 696
    invoke-virtual {v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 694
    invoke-virtual {v9, v3, v4, v6, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 697
    add-int/lit8 v2, v2, 0x8

    .line 693
    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v19

    goto :goto_11

    .end local v19    # "innerClasses":I
    .restart local v0    # "innerClasses":I
    :cond_1e
    move/from16 v19, v0

    .end local v0    # "innerClasses":I
    .restart local v19    # "innerClasses":I
    goto :goto_12

    .line 691
    .end local v1    # "i":I
    .end local v2    # "v":I
    .end local v19    # "innerClasses":I
    .restart local v0    # "innerClasses":I
    :cond_1f
    move/from16 v19, v0

    .line 702
    .end local v0    # "innerClasses":I
    .restart local v19    # "innerClasses":I
    :goto_12
    iget v0, v8, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0xa

    move-object/from16 v1, v21

    .end local v21    # "interfaces":[Ljava/lang/String;
    .local v1, "interfaces":[Ljava/lang/String;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 703
    .end local v16    # "u":I
    .local v0, "u":I
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .local v2, "i":I
    :goto_13
    if-lez v2, :cond_20

    .line 704
    invoke-direct {v8, v9, v12, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readField(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v0

    .line 703
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 706
    .end local v2    # "i":I
    :cond_20
    add-int/lit8 v0, v0, 0x2

    .line 707
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v8, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v2

    .restart local v2    # "i":I
    :goto_14
    if-lez v2, :cond_21

    .line 708
    invoke-direct {v8, v9, v12, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readMethod(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Context;I)I

    move-result v0

    .line 707
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 712
    .end local v2    # "i":I
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassVisitor;->visitEnd()V

    .line 713
    return-void
.end method

.method copyPool(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;)V
    .locals 14
    .param p1, "classWriter"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 304
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 305
    .local v0, "buf":[C
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    array-length v1, v1

    .line 306
    .local v1, "ll":I
    new-array v2, v1, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 307
    .local v2, "items2":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    .line 308
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v5, v5, v3

    .line 309
    .local v5, "index":I
    iget-object v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v7, v5, -0x1

    aget-byte v6, v6, v7

    .line 310
    .local v6, "tag":I
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    invoke-direct {v7, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;-><init>(I)V

    .line 312
    .local v7, "item":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_0

    .line 368
    :pswitch_0
    invoke-virtual {p0, v5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9, v8, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    :pswitch_1
    iget-object v8, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->bootstrapMethods:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    if-nez v8, :cond_0

    .line 358
    invoke-direct {p0, p1, v2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->copyBootstrapMethods(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;[C)V

    .line 360
    :cond_0
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 361
    .local v8, "nameType":I
    invoke-virtual {p0, v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p0, v10, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v11

    .line 361
    invoke-virtual {v7, v9, v10, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    goto/16 :goto_1

    .line 349
    .end local v8    # "nameType":I
    :pswitch_2
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 350
    .local v8, "fieldOrMethodRef":I
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v10, v8, 0x2

    invoke-virtual {p0, v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v10

    aget v9, v9, v10

    .line 351
    .local v9, "nameType":I
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x14

    .line 352
    invoke-virtual {p0, v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    .line 353
    invoke-virtual {p0, v9, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v9, 0x2

    invoke-virtual {p0, v13, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 351
    invoke-virtual {v7, v10, v11, v12, v13}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    goto/16 :goto_1

    .line 327
    .end local v8    # "fieldOrMethodRef":I
    .end local v9    # "nameType":I
    :pswitch_3
    invoke-virtual {p0, v5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v9, v10, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    goto :goto_1

    .line 316
    :pswitch_4
    iget-object v8, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p0, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    aget v8, v8, v9

    .line 317
    .local v8, "nameType":I
    invoke-virtual {p0, v5, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v8, 0x2

    .line 318
    invoke-virtual {p0, v11, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v11

    .line 317
    invoke-virtual {v7, v6, v9, v10, v11}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    goto :goto_1

    .line 335
    .end local v8    # "nameType":I
    :pswitch_5
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(D)V

    .line 336
    add-int/lit8 v3, v3, 0x1

    .line 337
    goto :goto_1

    .line 331
    :pswitch_6
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(J)V

    .line 332
    add-int/lit8 v3, v3, 0x1

    .line 333
    goto :goto_1

    .line 324
    :pswitch_7
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(F)V

    .line 325
    goto :goto_1

    .line 321
    :pswitch_8
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(I)V

    .line 322
    goto :goto_1

    .line 339
    :pswitch_9
    iget-object v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v10, v9, v3

    .line 340
    .local v10, "s":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 341
    iget-object v11, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v5, v11, v3

    .line 342
    add-int/lit8 v11, v5, 0x2

    .line 343
    invoke-virtual {p0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v12

    .line 342
    invoke-direct {p0, v11, v12, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    move-object v10, v11

    .line 345
    :cond_1
    invoke-virtual {v7, v6, v10, v8, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    nop

    .line 372
    .end local v10    # "s":Ljava/lang/String;
    :goto_1
    iget v8, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->hashCode:I

    array-length v9, v2

    rem-int/2addr v8, v9

    .line 373
    .local v8, "index2":I
    aget-object v9, v2, v8

    iput-object v9, v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 374
    aput-object v7, v2, v8

    .line 307
    .end local v5    # "index":I
    .end local v6    # "tag":I
    .end local v7    # "item":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;
    .end local v8    # "index2":I
    add-int/2addr v3, v4

    goto/16 :goto_0

    .line 377
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v3, v3, v4

    sub-int/2addr v3, v4

    .line 378
    .local v3, "off":I
    iget-object v4, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->pool:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    iget v6, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putByteArray([BII)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 379
    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->items:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    .line 380
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    int-to-double v6, v1

    mul-double v6, v6, v4

    double-to-int v4, v6

    iput v4, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->threshold:I

    .line 381
    iput v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->index:I

    .line 382
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccess()I
    .locals 1

    .line 244
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 256
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 6

    .line 283
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x6

    .line 284
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    .line 285
    .local v1, "n":I
    new-array v2, v1, [Ljava/lang/String;

    .line 286
    .local v2, "interfaces":[Ljava/lang/String;
    if-lez v1, :cond_0

    .line 287
    iget v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    new-array v3, v3, [C

    .line 288
    .local v3, "buf":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 289
    add-int/lit8 v0, v0, 0x2

    .line 290
    invoke-virtual {p0, v0, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    .end local v3    # "buf":[C
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public getItem(I)I
    .locals 1
    .param p1, "item"    # I

    .line 2351
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v0, v0, p1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 2337
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    array-length v0, v0

    return v0
.end method

.method public getMaxStringLength()I
    .locals 1

    .line 2362
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    return v0
.end method

.method public getSuperName()Ljava/lang/String;
    .locals 2

    .line 270
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->header:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->maxStringLength:I

    new-array v1, v1, [C

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte(I)I
    .locals 1
    .param p1, "index"    # I

    .line 2375
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readClass(I[C)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2528
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConst(I[C)Ljava/lang/Object;
    .locals 16
    .param p1, "item"    # I
    .param p2, "buf"    # [C

    .line 2546
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget v2, v2, p1

    .line 2547
    .local v2, "index":I
    iget-object v3, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v4, v2, -0x1

    aget-byte v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2563
    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readByte(I)I

    move-result v3

    .line 2564
    .local v3, "tag":I
    iget-object v10, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    .line 2565
    .local v10, "items":[I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    aget v4, v10, v4

    .line 2566
    .local v4, "cpIndex":I
    iget-object v5, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    add-int/lit8 v6, v4, -0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_0

    .line 2561
    .end local v3    # "tag":I
    .end local v4    # "cpIndex":I
    .end local v10    # "items":[I
    :sswitch_0
    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v3

    return-object v3

    .line 2559
    :sswitch_1
    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2557
    :sswitch_2
    invoke-virtual {v0, v2, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Type;

    move-result-object v3

    return-object v3

    .line 2555
    :sswitch_3
    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 2553
    :sswitch_4
    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 2551
    :sswitch_5
    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    .line 2549
    :sswitch_6
    invoke-virtual {v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 2566
    .restart local v3    # "tag":I
    .restart local v4    # "cpIndex":I
    .restart local v10    # "items":[I
    :cond_0
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2567
    .local v9, "itf":Z
    :goto_0
    invoke-virtual {v0, v4, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v11

    .line 2568
    .local v11, "owner":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v12, v10, v5

    .line 2569
    .end local v4    # "cpIndex":I
    .local v12, "cpIndex":I
    invoke-virtual {v0, v12, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v13

    .line 2570
    .local v13, "name":Ljava/lang/String;
    add-int/lit8 v4, v12, 0x2

    invoke-virtual {v0, v4, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v14

    .line 2571
    .local v14, "desc":Ljava/lang/String;
    new-instance v15, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;

    move-object v4, v15

    move v5, v3

    move-object v6, v11

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v4 .. v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v15

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2416
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 2417
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected readLabel(I[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "labels"    # [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    .line 2251
    aget-object v0, p2, p1

    if-nez v0, :cond_0

    .line 2252
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Label;-><init>()V

    aput-object v0, p2, p1

    .line 2254
    :cond_0
    aget-object v0, p2, p1

    return-object v0
.end method

.method public readLong(I)J
    .locals 6
    .param p1, "index"    # I

    .line 2431
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 2432
    .local v0, "l1":J
    add-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2433
    .local v2, "l0":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 2402
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 2403
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 2450
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 2451
    .local v0, "item":I
    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 2454
    :cond_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v2, v1, v0

    .line 2455
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2456
    return-object v2

    .line 2458
    :cond_1
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->items:[I

    aget p1, v3, v0

    .line 2459
    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    return-object v3

    .line 2452
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .line 2388
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassReader;->b:[B

    .line 2389
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
