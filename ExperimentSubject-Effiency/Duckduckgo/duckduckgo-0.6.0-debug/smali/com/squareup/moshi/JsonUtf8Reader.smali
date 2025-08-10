.class final Lcom/squareup/moshi/JsonUtf8Reader;
.super Lcom/squareup/moshi/JsonReader;
.source "JsonUtf8Reader.java"


# static fields
.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 29
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 30
    nop

    .line 31
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 32
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;

    .line 91
    invoke-direct {p0}, Lcom/squareup/moshi/JsonReader;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iput-object p1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 96
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 97
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 98
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-eqz v0, :cond_0

    .line 1012
    return-void

    .line 1010
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0
.end method

.method private doPeek()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 210
    .local v0, "peekStack":I
    const-wide/16 v3, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-ne v0, v2, :cond_0

    .line 211
    iget-object v9, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v10, v2

    aput v8, v9, v10

    goto/16 :goto_2

    .line 212
    :cond_0
    if-ne v0, v8, :cond_1

    .line 214
    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 215
    .local v9, "c":I
    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    .line 216
    sparse-switch v9, :sswitch_data_0

    .line 224
    const-string v1, "Unterminated array"

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 218
    :sswitch_0
    iput v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v7

    .line 220
    :sswitch_1
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 222
    :sswitch_2
    nop

    .line 226
    .end local v9    # "c":I
    goto :goto_2

    :cond_1
    const/4 v9, 0x5

    if-eq v0, v5, :cond_f

    if-ne v0, v9, :cond_2

    goto/16 :goto_4

    .line 267
    :cond_2
    if-ne v0, v7, :cond_4

    .line 268
    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v11, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v11, v2

    aput v9, v10, v11

    .line 270
    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 271
    .restart local v9    # "c":I
    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    .line 272
    sparse-switch v9, :sswitch_data_1

    .line 282
    const-string v1, "Expected \':\'"

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 276
    :sswitch_3
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 277
    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v11, 0x1

    invoke-interface {v10, v11, v12}, Lokio/BufferedSource;->request(J)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v10

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_3

    .line 278
    iget-object v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v10}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 274
    :sswitch_4
    nop

    .line 284
    .end local v9    # "c":I
    :cond_3
    :goto_0
    goto :goto_2

    :cond_4
    const/4 v9, 0x6

    if-ne v0, v9, :cond_5

    .line 285
    iget-object v9, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v10, v2

    aput v6, v9, v10

    goto :goto_2

    .line 286
    :cond_5
    if-ne v0, v6, :cond_7

    .line 287
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 288
    .restart local v9    # "c":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_6

    .line 289
    const/16 v1, 0x12

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 291
    :cond_6
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .end local v9    # "c":I
    goto :goto_1

    .line 293
    :cond_7
    if-eq v0, v1, :cond_e

    :goto_1
    nop

    .line 297
    :goto_2
    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v9

    .line 298
    .restart local v9    # "c":I
    sparse-switch v9, :sswitch_data_2

    .line 330
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v1

    .line 331
    .local v1, "result":I
    if-eqz v1, :cond_b

    .line 332
    return v1

    .line 325
    .end local v1    # "result":I
    :sswitch_5
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 326
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 300
    :sswitch_6
    if-ne v0, v2, :cond_8

    .line 301
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 302
    iput v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v7

    .line 322
    :sswitch_7
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 323
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v5

    .line 308
    :cond_8
    :sswitch_8
    if-eq v0, v2, :cond_a

    if-ne v0, v8, :cond_9

    goto :goto_3

    .line 312
    :cond_9
    const-string v1, "Unexpected value"

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 309
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 310
    iput v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 315
    :sswitch_9
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 316
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 317
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 319
    :sswitch_a
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 320
    const/16 v1, 0x9

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 335
    .restart local v1    # "result":I
    :cond_b
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v1

    .line 336
    if-eqz v1, :cond_c

    .line 337
    return v1

    .line 340
    :cond_c
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 344
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 345
    const/16 v2, 0xa

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 341
    :cond_d
    const-string v2, "Expected value"

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 294
    .end local v1    # "result":I
    .end local v9    # "c":I
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v3, v2

    aput v7, v1, v3

    .line 229
    if-ne v0, v9, :cond_10

    .line 230
    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 231
    .local v1, "c":I
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 232
    sparse-switch v1, :sswitch_data_3

    .line 240
    const-string v2, "Unterminated object"

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 234
    :sswitch_b
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v8

    .line 236
    :sswitch_c
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 243
    .end local v1    # "c":I
    :cond_10
    :sswitch_d
    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 244
    .restart local v1    # "c":I
    const-string v2, "Expected name"

    sparse-switch v1, :sswitch_data_4

    .line 260
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 261
    int-to-char v3, v1

    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 262
    const/16 v2, 0xe

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 253
    :sswitch_e
    if-eq v0, v9, :cond_11

    .line 254
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 255
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v8

    .line 257
    :cond_11
    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 249
    :sswitch_f
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 250
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 251
    const/16 v2, 0xc

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 246
    :sswitch_10
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 247
    const/16 v2, 0xd

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v2

    .line 264
    :cond_12
    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3a -> :sswitch_4
        0x3d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x2c -> :sswitch_8
        0x3b -> :sswitch_8
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x7b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2c -> :sswitch_d
        0x3b -> :sswitch_c
        0x7d -> :sswitch_b
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_10
        0x27 -> :sswitch_f
        0x7d -> :sswitch_e
    .end sparse-switch
.end method

.method private findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/squareup/moshi/JsonReader$Options;

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 570
    iget-object v2, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 572
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object p1, v2, v3

    .line 574
    return v0

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/squareup/moshi/JsonReader$Options;

    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 645
    iget-object v2, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 647
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 649
    return v0

    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isLiteral(I)Z
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    sparse-switch p1, :sswitch_data_0

    .line 501
    const/4 v0, 0x1

    return v0

    .line 487
    :sswitch_0
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 499
    :sswitch_1
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 5
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "p":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 954
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "p":I
    .local v2, "p":I
    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 955
    .local v0, "c":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 956
    goto :goto_1

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v3, v2, -0x1

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 960
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 961
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x2

    invoke-interface {v1, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    return v0

    .line 965
    :cond_1
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 966
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 967
    .local v1, "peek":B
    sparse-switch v1, :sswitch_data_0

    .line 989
    return v0

    .line 982
    :sswitch_0
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 983
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 984
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 985
    const/4 v2, 0x0

    .line 986
    move v0, v2

    goto :goto_0

    .line 970
    :sswitch_1
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 971
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 972
    const-string v3, "*/"

    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->skipTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 975
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 976
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 977
    const/4 v2, 0x0

    .line 978
    move v0, v2

    goto :goto_0

    .line 973
    :cond_2
    const-string v3, "Unterminated comment"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 991
    .end local v1    # "peek":B
    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 994
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 995
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 996
    const/4 v1, 0x0

    .line 1000
    .end local v0    # "c":I
    .end local v2    # "p":I
    .local v1, "p":I
    move v0, v1

    goto/16 :goto_0

    .line 998
    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_4
    return v0

    .line 953
    .end local v0    # "c":I
    :cond_5
    :goto_1
    move v0, v2

    goto/16 :goto_0

    .line 1001
    .end local v2    # "p":I
    .local v0, "p":I
    :cond_6
    if-nez p1, :cond_7

    .line 1004
    const/4 v1, -0x1

    return v1

    .line 1002
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "End of input"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .locals 6
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v1

    .line 785
    .local v1, "index":J
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 788
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 789
    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 790
    :cond_0
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 792
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    goto :goto_0

    .line 797
    :cond_1
    if-nez v0, :cond_2

    .line 798
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 800
    return-object v3

    .line 802
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 785
    :cond_3
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 812
    .local v0, "i":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private peekKeyword()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 354
    .local v0, "c":B
    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 362
    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    return v1

    .line 363
    :cond_3
    :goto_0
    const-string v2, "null"

    .line 364
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 365
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x7

    .local v4, "peeking":I
    goto :goto_3

    .line 359
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_4
    :goto_1
    const-string v2, "false"

    .line 360
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 361
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x6

    .restart local v4    # "peeking":I
    goto :goto_3

    .line 355
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "peeking":I
    :cond_5
    :goto_2
    const-string v2, "true"

    .line 356
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 357
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v4, 0x5

    .line 371
    .restart local v4    # "peeking":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 372
    .local v5, "length":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v5, :cond_8

    .line 373
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v6, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-nez v7, :cond_6

    .line 374
    return v1

    .line 376
    :cond_6
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 377
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    .line 378
    return v1

    .line 372
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 382
    .end local v6    # "i":I
    :cond_8
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    invoke-direct {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 383
    return v1

    .line 387
    :cond_9
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 388
    iput v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v4
.end method

.method private peekNumber()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const-wide/16 v0, 0x0

    .line 393
    .local v0, "value":J
    const/4 v2, 0x0

    .line 394
    .local v2, "negative":Z
    const/4 v3, 0x1

    .line 395
    .local v3, "fitsInLong":Z
    const/4 v4, 0x0

    .line 397
    .local v4, "last":I
    const/4 v5, 0x0

    .line 401
    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v7, v7

    invoke-interface {v6, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v6, :cond_0

    .line 402
    goto/16 :goto_5

    .line 405
    :cond_0
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v10, v5

    invoke-virtual {v6, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 406
    .local v6, "c":B
    const/4 v10, 0x5

    sparse-switch v6, :sswitch_data_0

    .line 441
    const/16 v11, 0x30

    if-lt v6, v11, :cond_11

    const/16 v11, 0x39

    if-le v6, v11, :cond_7

    goto/16 :goto_4

    .line 427
    :sswitch_0
    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    return v9

    .line 428
    :cond_2
    :goto_1
    const/4 v4, 0x5

    .line 429
    goto :goto_3

    .line 434
    :sswitch_1
    if-ne v4, v8, :cond_3

    .line 435
    const/4 v4, 0x3

    .line 436
    goto :goto_3

    .line 438
    :cond_3
    return v9

    .line 408
    :sswitch_2
    if-nez v4, :cond_4

    .line 409
    const/4 v2, 0x1

    .line 410
    const/4 v4, 0x1

    .line 411
    goto :goto_3

    .line 412
    :cond_4
    if-ne v4, v10, :cond_5

    .line 413
    const/4 v4, 0x6

    .line 414
    goto :goto_3

    .line 416
    :cond_5
    return v9

    .line 419
    :sswitch_3
    if-ne v4, v10, :cond_6

    .line 420
    const/4 v4, 0x6

    .line 421
    goto :goto_3

    .line 423
    :cond_6
    return v9

    .line 447
    :cond_7
    const/4 v7, 0x1

    if-eq v4, v7, :cond_f

    if-nez v4, :cond_8

    goto :goto_2

    .line 450
    :cond_8
    if-ne v4, v8, :cond_c

    .line 451
    const-wide/16 v10, 0x0

    cmp-long v8, v0, v10

    if-nez v8, :cond_9

    .line 452
    return v9

    .line 454
    :cond_9
    const-wide/16 v10, 0xa

    mul-long v10, v10, v0

    add-int/lit8 v8, v6, -0x30

    int-to-long v12, v8

    sub-long/2addr v10, v12

    .line 455
    .local v10, "newValue":J
    const-wide v12, -0xcccccccccccccccL

    cmp-long v8, v0, v12

    if-gtz v8, :cond_a

    cmp-long v8, v0, v12

    if-nez v8, :cond_b

    cmp-long v8, v10, v0

    if-gez v8, :cond_b

    :cond_a
    const/4 v9, 0x1

    :cond_b
    and-int/2addr v3, v9

    .line 457
    move-wide v0, v10

    .line 458
    .end local v10    # "newValue":J
    goto :goto_3

    :cond_c
    const/4 v7, 0x3

    if-ne v4, v7, :cond_d

    .line 459
    const/4 v4, 0x4

    goto :goto_3

    .line 460
    :cond_d
    if-eq v4, v10, :cond_e

    const/4 v7, 0x6

    if-ne v4, v7, :cond_10

    .line 461
    :cond_e
    const/4 v4, 0x7

    goto :goto_3

    .line 448
    :cond_f
    :goto_2
    add-int/lit8 v7, v6, -0x30

    neg-int v7, v7

    int-to-long v0, v7

    .line 449
    const/4 v4, 0x2

    .line 400
    .end local v6    # "c":B
    :cond_10
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 442
    .restart local v6    # "c":B
    :cond_11
    :goto_4
    invoke-direct {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v10

    if-nez v10, :cond_17

    .line 443
    nop

    .line 467
    .end local v6    # "c":B
    :goto_5
    if-ne v4, v8, :cond_14

    if-eqz v3, :cond_14

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v6, v0, v10

    if-nez v6, :cond_12

    if-eqz v2, :cond_14

    .line 468
    :cond_12
    if-eqz v2, :cond_13

    move-wide v6, v0

    goto :goto_6

    :cond_13
    neg-long v6, v0

    :goto_6
    iput-wide v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    .line 469
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 470
    const/16 v6, 0x10

    iput v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 471
    :cond_14
    if-eq v4, v8, :cond_16

    if-eq v4, v7, :cond_16

    const/4 v6, 0x7

    if-ne v4, v6, :cond_15

    goto :goto_7

    .line 476
    :cond_15
    return v9

    .line 473
    :cond_16
    :goto_7
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 474
    const/16 v6, 0x11

    iput v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 445
    .restart local v6    # "c":B
    :cond_17
    return v9

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1057
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    .line 1058
    .local v0, "escaped":B
    const/16 v1, 0xa

    sparse-switch v0, :sswitch_data_0

    .line 1104
    iget-boolean v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-eqz v1, :cond_5

    .line 1105
    int-to-char v1, v0

    return v1

    .line 1060
    :sswitch_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x4

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1064
    const/4 v2, 0x0

    .line 1065
    .local v2, "result":C
    const/4 v5, 0x0

    .local v5, "i":I
    add-int/lit8 v6, v5, 0x4

    .local v6, "end":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 1066
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v5

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    .line 1067
    .local v7, "c":B
    shl-int/lit8 v8, v2, 0x4

    int-to-char v2, v8

    .line 1068
    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-gt v7, v8, :cond_0

    .line 1069
    add-int/lit8 v8, v7, -0x30

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_1

    .line 1070
    :cond_0
    const/16 v8, 0x61

    if-lt v7, v8, :cond_1

    const/16 v8, 0x66

    if-gt v7, v8, :cond_1

    .line 1071
    add-int/lit8 v8, v7, -0x61

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    goto :goto_1

    .line 1072
    :cond_1
    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    const/16 v8, 0x46

    if-gt v7, v8, :cond_2

    .line 1073
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v8, v1

    add-int/2addr v8, v2

    int-to-char v2, v8

    .line 1065
    .end local v7    # "c":B
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1075
    .restart local v7    # "c":B
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\u"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v8, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 1078
    .end local v5    # "i":I
    .end local v6    # "end":I
    .end local v7    # "c":B
    :cond_3
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 1079
    return v2

    .line 1061
    .end local v2    # "result":C
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unterminated escape sequence at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    :sswitch_1
    const/16 v1, 0x9

    return v1

    .line 1091
    :sswitch_2
    const/16 v1, 0xd

    return v1

    .line 1088
    :sswitch_3
    return v1

    .line 1094
    :sswitch_4
    const/16 v1, 0xc

    return v1

    .line 1085
    :sswitch_5
    const/16 v1, 0x8

    return v1

    .line 1101
    :sswitch_6
    int-to-char v1, v0

    return v1

    .line 1104
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 1054
    .end local v0    # "escaped":B
    :cond_6
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 6
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 818
    .local v0, "index":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 820
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 821
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 822
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 827
    .end local v0    # "index":J
    goto :goto_0

    .line 824
    .restart local v0    # "index":J
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 825
    return-void

    .line 818
    :cond_1
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1032
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 1033
    goto :goto_0

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    .end local v0    # "c":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1038
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private skipToEndOfLine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 1021
    .local v0, "index":J
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 1022
    return-void
.end method

.method private skipUnquotedValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 832
    .local v0, "i":J
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 833
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 102
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 105
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 107
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    aput v1, v2, v3

    .line 108
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 113
    return-void

    .line 110
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 132
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 135
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 142
    return-void

    .line 139
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 892
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    .line 893
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 894
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 895
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 896
    return-void
.end method

.method public endArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 117
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 120
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 121
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 122
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 123
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 128
    return-void

    .line 125
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endObject()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 146
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 149
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 150
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 151
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 152
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 158
    return-void

    .line 155
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected END_OBJECT but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 162
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 165
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 657
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 660
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 661
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 662
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 663
    return v3

    .line 664
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 665
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 666
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v4, v3

    aget v5, v1, v4

    add-int/2addr v5, v3

    aput v5, v1, v4

    .line 667
    return v2

    .line 669
    :cond_2
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 688
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 692
    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 693
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 694
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 695
    iget-wide v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v1, v1

    return-wide v1

    .line 698
    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 699
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 700
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 701
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 702
    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 703
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 704
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 705
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 706
    :cond_5
    if-ne v0, v4, :cond_8

    .line 710
    :goto_0
    iput v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .local v3, "result":D
    nop

    .line 718
    iget-boolean v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v1, :cond_7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 719
    :cond_6
    new-instance v1, Lcom/squareup/moshi/JsonEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_7
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 723
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 724
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 725
    return-wide v3

    .line 714
    .end local v3    # "result":D
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextInt()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 837
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 842
    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 843
    iget-wide v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v1, v5

    .line 844
    .local v1, "result":I
    int-to-long v7, v1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    .line 848
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 849
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 850
    return v1

    .line 845
    :cond_1
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    .end local v1    # "result":I
    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 854
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 855
    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    .line 867
    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 868
    :cond_5
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 857
    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 858
    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 860
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 861
    .restart local v1    # "result":I
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 862
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    return v1

    .line 864
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    .line 866
    nop

    .line 871
    :goto_2
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 874
    :try_start_1
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 878
    .local v5, "asDouble":D
    nop

    .line 879
    double-to-int v1, v5

    .line 880
    .restart local v1    # "result":I
    int-to-double v7, v1

    cmpl-double v9, v7, v5

    if-nez v9, :cond_8

    .line 884
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 885
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 886
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 887
    return v1

    .line 881
    :cond_8
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    .end local v1    # "result":I
    .end local v5    # "asDouble":D
    :catch_1
    move-exception v1

    .line 876
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 730
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 734
    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 735
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 736
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 737
    iget-wide v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    return-wide v1

    .line 740
    :cond_1
    const/16 v1, 0x11

    const-string v3, " at path "

    const-string v4, "Expected a long but was "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    .line 741
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_2

    .line 742
    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    goto :goto_0

    .line 754
    :cond_3
    if-ne v0, v5, :cond_4

    goto :goto_2

    .line 755
    :cond_4
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 743
    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 744
    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 745
    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 747
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 748
    .local v6, "result":J
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 749
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v8, v8, -0x1

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    return-wide v6

    .line 751
    .end local v6    # "result":J
    :catch_0
    move-exception v1

    .line 753
    nop

    .line 759
    :goto_2
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 762
    :try_start_1
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 763
    .local v1, "asDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 767
    .end local v1    # "asDecimal":Ljava/math/BigDecimal;
    .local v3, "result":J
    nop

    .line 768
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 769
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 770
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v2

    .line 771
    return-wide v3

    .line 764
    .end local v3    # "result":J
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_3
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 507
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 511
    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 513
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 514
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 516
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 518
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 522
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 523
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 524
    return-object v1

    .line 520
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 674
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 677
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 678
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 679
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 680
    const/4 v1, 0x0

    return-object v1

    .line 682
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 582
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 586
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 588
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 589
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 590
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 591
    sget-object v1, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 594
    .restart local v1    # "result":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_0

    .line 595
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 596
    iget-wide v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 597
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 598
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .line 602
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 603
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 604
    return-object v1

    .line 600
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public peek()Lcom/squareup/moshi/JsonReader$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 170
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 174
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 202
    :pswitch_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 200
    :pswitch_1
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 187
    :pswitch_2
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 197
    :pswitch_3
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 192
    :pswitch_4
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 190
    :pswitch_5
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 182
    :pswitch_6
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 180
    :pswitch_7
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 178
    :pswitch_8
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    .line 176
    :pswitch_9
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method promoteNameToValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 1112
    const/16 v0, 0xb

    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 1114
    :cond_0
    return-void
.end method

.method public selectName(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 6
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 529
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 532
    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 535
    :cond_1
    if-ne v0, v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v1

    return v1

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v3

    .line 540
    .local v3, "result":I
    if-eq v3, v2, :cond_3

    .line 541
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 542
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v4, v4, v3

    aput-object v4, v1, v2

    .line 544
    return v3

    .line 549
    :cond_3
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 551
    .local v4, "lastPathName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "nextName":Ljava/lang/String;
    invoke-direct {p0, v5, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v3

    .line 554
    if-ne v3, v2, :cond_4

    .line 555
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 556
    iput-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v4, v1, v2

    .line 561
    :cond_4
    return v3

    .line 533
    .end local v3    # "result":I
    .end local v4    # "lastPathName":Ljava/lang/String;
    .end local v5    # "nextName":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2
.end method

.method public selectString(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 6
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    iget v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 609
    .local v0, "p":I
    if-nez v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    .line 612
    :cond_0
    const/16 v1, 0x8

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    if-ne v0, v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v1

    return v1

    .line 619
    :cond_2
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v4, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v3, v4}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v3

    .line 620
    .local v3, "result":I
    if-eq v3, v2, :cond_3

    .line 621
    const/4 v1, 0x0

    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 622
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v4, v1, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v2

    .line 624
    return v3

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "nextString":Ljava/lang/String;
    invoke-direct {p0, v4, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v3

    .line 630
    if-ne v3, v2, :cond_4

    .line 631
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 632
    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v5, v1, v2

    add-int/lit8 v5, v5, -0x1

    aput v5, v1, v2

    .line 636
    :cond_4
    return v3

    .line 613
    .end local v3    # "result":I
    .end local v4    # "nextString":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2
.end method

.method public skipValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-nez v0, :cond_d

    .line 902
    const/4 v0, 0x0

    .line 904
    .local v0, "count":I
    :cond_0
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 905
    .local v1, "p":I
    if-nez v1, :cond_1

    .line 906
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v1

    .line 909
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 910
    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 912
    :cond_2
    if-ne v1, v3, :cond_3

    .line 913
    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 915
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 916
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 917
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 918
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 919
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 921
    :cond_5
    const/16 v2, 0xe

    if-eq v1, v2, :cond_b

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 923
    :cond_6
    const/16 v2, 0x9

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 925
    :cond_7
    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8

    goto :goto_0

    .line 927
    :cond_8
    const/16 v2, 0x11

    if-ne v1, v2, :cond_c

    .line 928
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    goto :goto_3

    .line 926
    :cond_9
    :goto_0
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_3

    .line 924
    :cond_a
    :goto_1
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_3

    .line 922
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 930
    :cond_c
    :goto_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 931
    .end local v1    # "p":I
    if-nez v0, :cond_0

    .line 933
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    aget v4, v1, v2

    add-int/2addr v4, v3

    aput v4, v1, v2

    .line 934
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    sub-int/2addr v2, v3

    const-string v3, "null"

    aput-object v3, v1, v2

    .line 935
    return-void

    .line 900
    .end local v0    # "count":I
    :cond_d
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
