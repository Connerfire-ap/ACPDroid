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

    .prologue
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
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 31
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

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/squareup/moshi/JsonReader;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
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
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v0, :cond_0

    .line 1010
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 1012
    :cond_0
    return-void
.end method

.method private doPeek()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 209
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v1, v6, v7

    .line 210
    .local v1, "peekStack":I
    if-ne v1, v4, :cond_2

    .line 211
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v3, v6, v7

    .line 297
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 298
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    .line 330
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v2

    .line 331
    .local v2, "result":I
    if-eqz v2, :cond_10

    .line 345
    .end local v2    # "result":I
    :cond_1
    :goto_1
    return v2

    .line 212
    .end local v0    # "c":I
    :cond_2
    if-ne v1, v3, :cond_3

    .line 214
    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 215
    .restart local v0    # "c":I
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    .line 216
    sparse-switch v0, :sswitch_data_1

    .line 224
    const-string v3, "Unterminated array"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 218
    :sswitch_1
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    .line 220
    :sswitch_2
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_0

    .line 226
    .end local v0    # "c":I
    :cond_3
    const/4 v6, 0x3

    if-eq v1, v6, :cond_4

    if-ne v1, v8, :cond_8

    .line 227
    :cond_4
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aput v2, v5, v6

    .line 229
    if-ne v1, v8, :cond_5

    .line 230
    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 231
    .restart local v0    # "c":I
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    .line 232
    sparse-switch v0, :sswitch_data_2

    .line 240
    const-string v3, "Unterminated object"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 234
    :sswitch_3
    iput v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 236
    :sswitch_4
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 243
    .end local v0    # "c":I
    :cond_5
    :sswitch_5
    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 244
    .restart local v0    # "c":I
    sparse-switch v0, :sswitch_data_3

    .line 260
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 261
    int-to-char v3, v0

    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    const/16 v2, 0xe

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    .line 246
    :sswitch_6
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 247
    const/16 v2, 0xd

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    .line 249
    :sswitch_7
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 250
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 251
    const/16 v2, 0xc

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_1

    .line 253
    :sswitch_8
    if-eq v1, v8, :cond_6

    .line 254
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 255
    iput v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    move v2, v3

    goto :goto_1

    .line 257
    :cond_6
    const-string v3, "Expected name"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 264
    :cond_7
    const-string v3, "Expected name"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 267
    .end local v0    # "c":I
    :cond_8
    if-ne v1, v2, :cond_9

    .line 268
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v8, v6, v7

    .line 270
    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 271
    .restart local v0    # "c":I
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    .line 272
    packed-switch v0, :pswitch_data_0

    .line 282
    :pswitch_1
    const-string v3, "Expected \':\'"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 276
    :pswitch_2
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 277
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v8, 0x1

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_0

    .line 278
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    goto/16 :goto_0

    .line 284
    .end local v0    # "c":I
    :cond_9
    const/4 v6, 0x6

    if-ne v1, v6, :cond_a

    .line 285
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aput v5, v6, v7

    goto/16 :goto_0

    .line 286
    :cond_a
    if-ne v1, v5, :cond_c

    .line 287
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v0

    .line 288
    .restart local v0    # "c":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_b

    .line 289
    const/16 v2, 0x12

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 291
    :cond_b
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    goto/16 :goto_0

    .line 293
    .end local v0    # "c":I
    :cond_c
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 294
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    .restart local v0    # "c":I
    :sswitch_9
    if-ne v1, v4, :cond_d

    .line 301
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 302
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 308
    :cond_d
    :sswitch_a
    if-eq v1, v4, :cond_e

    if-ne v1, v3, :cond_f

    .line 309
    :cond_e
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 310
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    move v2, v5

    goto/16 :goto_1

    .line 312
    :cond_f
    const-string v3, "Unexpected value"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 315
    :sswitch_b
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 316
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 317
    const/16 v2, 0x8

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 319
    :sswitch_c
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 320
    const/16 v2, 0x9

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 322
    :sswitch_d
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 323
    const/4 v2, 0x3

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 325
    :sswitch_e
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    .line 326
    iput v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    move v2, v4

    goto/16 :goto_1

    .line 335
    .restart local v2    # "result":I
    :cond_10
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v2

    .line 336
    if-nez v2, :cond_1

    .line 340
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 341
    const-string v3, "Expected value"

    invoke-virtual {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v3

    throw v3

    .line 344
    :cond_11
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 345
    const/16 v2, 0xa

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_1

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_c
        0x27 -> :sswitch_b
        0x2c -> :sswitch_a
        0x3b -> :sswitch_a
        0x5b -> :sswitch_d
        0x5d -> :sswitch_9
        0x7b -> :sswitch_e
    .end sparse-switch

    .line 216
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch

    .line 232
    :sswitch_data_2
    .sparse-switch
        0x2c -> :sswitch_5
        0x3b -> :sswitch_4
        0x7d -> :sswitch_3
    .end sparse-switch

    .line 244
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x7d -> :sswitch_8
    .end sparse-switch

    .line 272
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/squareup/moshi/JsonReader$Options;

    .prologue
    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v2

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

    .line 577
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 569
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/squareup/moshi/JsonReader$Options;

    .prologue
    .line 644
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p2, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v1, v2

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

    .line 652
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 644
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isLiteral(I)Z
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    sparse-switch p1, :sswitch_data_0

    .line 501
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 487
    :sswitch_0
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 499
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 481
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
    .locals 8
    .param p1, "throwOnEof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 952
    const/4 v1, 0x0

    .line 953
    .local v1, "p":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v5, v1, 0x1

    int-to-long v6, v5

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 954
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "p":I
    .local v2, "p":I
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 955
    .local v0, "c":I
    const/16 v4, 0xa

    if-eq v0, v4, :cond_7

    const/16 v4, 0x20

    if-eq v0, v4, :cond_7

    const/16 v4, 0xd

    if-eq v0, v4, :cond_7

    const/16 v4, 0x9

    if-ne v0, v4, :cond_0

    move v1, v2

    .line 956
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 959
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :cond_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v5, v2, -0x1

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->skip(J)V

    .line 960
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    .line 961
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 1004
    .end local v0    # "c":I
    .end local v2    # "p":I
    .restart local v1    # "p":I
    :goto_1
    return v0

    .line 965
    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_1
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 966
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v3

    .line 967
    .local v3, "peek":B
    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 989
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1

    .line 970
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :sswitch_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 971
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 972
    const-string v4, "*/"

    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->skipTo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 973
    const-string v4, "Unterminated comment"

    invoke-virtual {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 975
    :cond_2
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 976
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 977
    const/4 v1, 0x0

    .line 978
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 982
    .end local v1    # "p":I
    .restart local v2    # "p":I
    :sswitch_1
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 983
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 984
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 985
    const/4 v1, 0x0

    .line 986
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .line 991
    .end local v1    # "p":I
    .end local v3    # "peek":B
    .restart local v2    # "p":I
    :cond_3
    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    .line 994
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->checkLenient()V

    .line 995
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 996
    const/4 v1, 0x0

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .end local v1    # "p":I
    .restart local v2    # "p":I
    :cond_4
    move v1, v2

    .line 998
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1

    .line 1001
    .end local v0    # "c":I
    :cond_5
    if-eqz p1, :cond_6

    .line 1002
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "End of input"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1004
    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    .end local v1    # "p":I
    .restart local v0    # "c":I
    .restart local v2    # "p":I
    :cond_7
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto/16 :goto_0

    .line 967
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
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

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    .line 785
    .local v2, "index":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-string v4, "Unterminated string"

    invoke-virtual {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v4

    throw v4

    .line 788
    :cond_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 789
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 792
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 797
    :cond_2
    if-nez v0, :cond_3

    .line 798
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 804
    .end local v1    # "result":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 802
    :cond_3
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 812
    .local v0, "i":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private peekKeyword()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 350
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 354
    .local v0, "c":B
    const/16 v7, 0x74

    if-eq v0, v7, :cond_0

    const/16 v7, 0x54

    if-ne v0, v7, :cond_1

    .line 355
    :cond_0
    const-string v2, "true"

    .line 356
    .local v2, "keyword":Ljava/lang/String;
    const-string v3, "TRUE"

    .line 357
    .local v3, "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x5

    .line 371
    .local v5, "peeking":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 372
    .local v4, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_8

    .line 373
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v1, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 388
    .end local v1    # "i":I
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "peeking":I
    :goto_2
    return v5

    .line 358
    :cond_1
    const/16 v7, 0x66

    if-eq v0, v7, :cond_2

    const/16 v7, 0x46

    if-ne v0, v7, :cond_3

    .line 359
    :cond_2
    const-string v2, "false"

    .line 360
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "FALSE"

    .line 361
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x6

    .restart local v5    # "peeking":I
    goto :goto_0

    .line 362
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_3
    const/16 v7, 0x6e

    if-eq v0, v7, :cond_4

    const/16 v7, 0x4e

    if-ne v0, v7, :cond_5

    .line 363
    :cond_4
    const-string v2, "null"

    .line 364
    .restart local v2    # "keyword":Ljava/lang/String;
    const-string v3, "NULL"

    .line 365
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    const/4 v5, 0x7

    .restart local v5    # "peeking":I
    goto :goto_0

    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "keywordUpper":Ljava/lang/String;
    .end local v5    # "peeking":I
    :cond_5
    move v5, v6

    .line 367
    goto :goto_2

    .line 376
    .restart local v1    # "i":I
    .restart local v2    # "keyword":Ljava/lang/String;
    .restart local v3    # "keywordUpper":Ljava/lang/String;
    .restart local v4    # "length":I
    .restart local v5    # "peeking":I
    :cond_6
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 377
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_7

    move v5, v6

    .line 378
    goto :goto_2

    .line 372
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_8
    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v8, v4, 0x1

    int-to-long v8, v8

    invoke-interface {v7, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v7

    invoke-direct {p0, v7}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_9

    move v5, v6

    .line 383
    goto :goto_2

    .line 387
    :cond_9
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 388
    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto :goto_2
.end method

.method private peekNumber()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const-wide/16 v8, 0x0

    .line 393
    .local v8, "value":J
    const/4 v4, 0x0

    .line 394
    .local v4, "negative":Z
    const/4 v1, 0x1

    .line 395
    .local v1, "fitsInLong":Z
    const/4 v3, 0x0

    .line 397
    .local v3, "last":I
    const/4 v2, 0x0

    .line 401
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v10, v2, 0x1

    int-to-long v10, v10

    invoke-interface {v5, v10, v11}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 467
    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_15

    if-eqz v1, :cond_15

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    if-eqz v4, :cond_15

    .line 468
    :cond_1
    if-eqz v4, :cond_14

    .end local v8    # "value":J
    :goto_1
    iput-wide v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    .line 469
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lokio/Buffer;->skip(J)V

    .line 470
    const/16 v5, 0x10

    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 476
    :goto_2
    return v5

    .line 405
    .restart local v8    # "value":J
    :cond_2
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 406
    .local v0, "c":B
    sparse-switch v0, :sswitch_data_0

    .line 441
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_b

    .line 442
    :cond_3
    invoke-direct {p0, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    const/4 v5, 0x0

    goto :goto_2

    .line 408
    :sswitch_0
    if-nez v3, :cond_5

    .line 409
    const/4 v4, 0x1

    .line 410
    const/4 v3, 0x1

    .line 400
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 413
    const/4 v3, 0x6

    .line 414
    goto :goto_3

    .line 416
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 419
    :sswitch_1
    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    .line 420
    const/4 v3, 0x6

    .line 421
    goto :goto_3

    .line 423
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 427
    :sswitch_2
    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    .line 428
    :cond_8
    const/4 v3, 0x5

    .line 429
    goto :goto_3

    .line 431
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 434
    :sswitch_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    .line 435
    const/4 v3, 0x3

    .line 436
    goto :goto_3

    .line 438
    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    .line 447
    :cond_b
    const/4 v5, 0x1

    if-eq v3, v5, :cond_c

    if-nez v3, :cond_d

    .line 448
    :cond_c
    add-int/lit8 v5, v0, -0x30

    neg-int v5, v5

    int-to-long v8, v5

    .line 449
    const/4 v3, 0x2

    goto :goto_3

    .line 450
    :cond_d
    const/4 v5, 0x2

    if-ne v3, v5, :cond_11

    .line 451
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_e

    .line 452
    const/4 v5, 0x0

    goto :goto_2

    .line 454
    :cond_e
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v8

    add-int/lit8 v5, v0, -0x30

    int-to-long v12, v5

    sub-long v6, v10, v12

    .line 455
    .local v6, "newValue":J
    const-wide v10, -0xcccccccccccccccL

    cmp-long v5, v8, v10

    if-gtz v5, :cond_f

    const-wide v10, -0xcccccccccccccccL

    cmp-long v5, v8, v10

    if-nez v5, :cond_10

    cmp-long v5, v6, v8

    if-gez v5, :cond_10

    :cond_f
    const/4 v5, 0x1

    :goto_4
    and-int/2addr v1, v5

    .line 457
    move-wide v8, v6

    .line 458
    goto :goto_3

    .line 455
    :cond_10
    const/4 v5, 0x0

    goto :goto_4

    .line 458
    .end local v6    # "newValue":J
    :cond_11
    const/4 v5, 0x3

    if-ne v3, v5, :cond_12

    .line 459
    const/4 v3, 0x4

    goto :goto_3

    .line 460
    :cond_12
    const/4 v5, 0x5

    if-eq v3, v5, :cond_13

    const/4 v5, 0x6

    if-ne v3, v5, :cond_4

    .line 461
    :cond_13
    const/4 v3, 0x7

    goto :goto_3

    .line 468
    .end local v0    # "c":B
    :cond_14
    neg-long v8, v8

    goto/16 :goto_1

    .line 471
    :cond_15
    const/4 v5, 0x2

    if-eq v3, v5, :cond_16

    const/4 v5, 0x4

    if-eq v3, v5, :cond_16

    const/4 v5, 0x7

    if-ne v3, v5, :cond_17

    .line 473
    :cond_16
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 474
    const/16 v5, 0x11

    iput v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    goto/16 :goto_2

    .line 476
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_0
        0x2e -> :sswitch_3
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method private readEscapeCharacter()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x4

    .line 1053
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v6, 0x1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1054
    const-string v5, "Unterminated escape sequence"

    invoke-virtual {p0, v5}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v5

    throw v5

    .line 1057
    :cond_0
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readByte()B

    move-result v2

    .line 1058
    .local v2, "escaped":B
    sparse-switch v2, :sswitch_data_0

    .line 1104
    iget-boolean v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid escape sequence: \\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v5

    throw v5

    .line 1060
    :sswitch_0
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1061
    new-instance v5, Ljava/io/EOFException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unterminated escape sequence at path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1064
    :cond_1
    const/4 v4, 0x0

    .line 1065
    .local v4, "result":C
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v1, v3, 0x4

    .local v1, "end":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 1066
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 1067
    .local v0, "c":B
    shl-int/lit8 v5, v4, 0x4

    int-to-char v4, v5

    .line 1068
    const/16 v5, 0x30

    if-lt v0, v5, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 1069
    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v4

    int-to-char v4, v5

    .line 1065
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1070
    :cond_2
    const/16 v5, 0x61

    if-lt v0, v5, :cond_3

    const/16 v5, 0x66

    if-gt v0, v5, :cond_3

    .line 1071
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    .line 1072
    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 1073
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v4

    int-to-char v4, v5

    goto :goto_1

    .line 1075
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v5

    throw v5

    .line 1078
    .end local v0    # "c":B
    :cond_5
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v5, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1105
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "result":C
    :goto_2
    return v4

    .line 1082
    :sswitch_1
    const/16 v4, 0x9

    goto :goto_2

    .line 1085
    :sswitch_2
    const/16 v4, 0x8

    goto :goto_2

    .line 1088
    :sswitch_3
    const/16 v4, 0xa

    goto :goto_2

    .line 1091
    :sswitch_4
    const/16 v4, 0xd

    goto :goto_2

    .line 1094
    :sswitch_5
    const/16 v4, 0xc

    goto :goto_2

    .line 1101
    :sswitch_6
    int-to-char v4, v2

    goto :goto_2

    .line 1105
    :cond_6
    int-to-char v4, v2

    goto :goto_2

    .line 1058
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x22 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2f -> :sswitch_6
        0x5c -> :sswitch_6
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .locals 8
    .param p1, "runTerminator"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 817
    :goto_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 818
    .local v0, "index":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->syntaxError(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v2

    throw v2

    .line 820
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_1

    .line 821
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 822
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    goto :goto_0

    .line 824
    :cond_1
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long v4, v0, v6

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 825
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    :goto_0
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

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

    goto :goto_0

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    :cond_1
    const/4 v1, 0x1

    .line 1038
    .end local v0    # "c":I
    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private skipToEndOfLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 1021
    .local v0, "index":J
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    :goto_0
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 1022
    return-void

    .line 1021
    :cond_0
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    goto :goto_0
.end method

.method private skipUnquotedValue()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v3, Lcom/squareup/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v2, v3}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 832
    .local v0, "i":J
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .end local v0    # "i":J
    :goto_0
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 833
    return-void

    .line 832
    .restart local v0    # "i":J
    :cond_0
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public beginArray()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

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
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput v3, v1, v2

    .line 108
    iput v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 113
    return-void

    .line 110
    :cond_1
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
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

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
    const/4 v2, 0x0

    .line 891
    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 892
    iget-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->scopes:[I

    const/16 v1, 0x8

    aput v1, v0, v2

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

    .prologue
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

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
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

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
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

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

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
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 661
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 662
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 663
    const/4 v1, 0x1

    .line 667
    :goto_0
    return v1

    .line 664
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 665
    iput v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 666
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    .line 669
    :cond_2
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 687
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 688
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v1

    .line 692
    :cond_0
    const/16 v4, 0x10

    if-ne v1, v4, :cond_1

    .line 693
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 694
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 695
    iget-wide v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v2, v4

    .line 725
    :goto_0
    return-wide v2

    .line 698
    :cond_1
    const/16 v4, 0x11

    if-ne v1, v4, :cond_4

    .line 699
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 710
    :cond_2
    :goto_1
    iput v9, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 713
    :try_start_0
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 718
    .local v2, "result":D
    iget-boolean v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->lenient:Z

    if-nez v4, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 719
    :cond_3
    new-instance v4, Lcom/squareup/moshi/JsonEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON forbids NaN and infinities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 720
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 700
    .end local v2    # "result":D
    :cond_4
    const/16 v4, 0x9

    if-ne v1, v4, :cond_5

    .line 701
    sget-object v4, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 702
    :cond_5
    const/16 v4, 0x8

    if-ne v1, v4, :cond_6

    .line 703
    sget-object v4, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v4}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 704
    :cond_6
    const/16 v4, 0xa

    if-ne v1, v4, :cond_7

    .line 705
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_1

    .line 706
    :cond_7
    if-eq v1, v9, :cond_2

    .line 707
    new-instance v4, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/squareup/moshi/JsonDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected a double but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 716
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 722
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "result":D
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 723
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 724
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    goto/16 :goto_0
.end method

.method public nextInt()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xb

    const/16 v7, 0x9

    const/4 v10, 0x0

    .line 836
    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 837
    .local v3, "p":I
    if-nez v3, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v3

    .line 842
    :cond_0
    const/16 v6, 0x10

    if-ne v3, v6, :cond_2

    .line 843
    iget-wide v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v4, v6

    .line 844
    .local v4, "result":I
    iget-wide v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 845
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 846
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 848
    :cond_1
    iput v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 849
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    move v5, v4

    .line 887
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 853
    .end local v5    # "result":I
    :cond_2
    const/16 v6, 0x11

    if-ne v3, v6, :cond_4

    .line 854
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 871
    :cond_3
    :goto_1
    iput v11, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 874
    :try_start_0
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 879
    .local v0, "asDouble":D
    double-to-int v4, v0

    .line 880
    .restart local v4    # "result":I
    int-to-double v6, v4

    cmpl-double v6, v6, v0

    if-eqz v6, :cond_8

    .line 881
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 882
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 855
    .end local v0    # "asDouble":D
    .end local v4    # "result":I
    :cond_4
    if-eq v3, v7, :cond_5

    const/16 v6, 0x8

    if-ne v3, v6, :cond_7

    .line 856
    :cond_5
    if-ne v3, v7, :cond_6

    sget-object v6, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 857
    invoke-direct {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    .line 858
    :goto_2
    iput-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 860
    :try_start_1
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 861
    .restart local v4    # "result":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 862
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v4

    .line 863
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_0

    .line 857
    .end local v5    # "result":I
    :cond_6
    sget-object v6, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 858
    invoke-direct {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 867
    :cond_7
    if-eq v3, v11, :cond_3

    .line 868
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 875
    :catch_0
    move-exception v2

    .line 876
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/squareup/moshi/JsonDataException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected an int but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 877
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 884
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "asDouble":D
    .restart local v4    # "result":I
    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 885
    iput v10, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 886
    iget-object v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7

    move v5, v4

    .line 887
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto/16 :goto_0

    .line 864
    .end local v0    # "asDouble":D
    .end local v5    # "result":I
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method public nextLong()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    const/16 v6, 0x9

    const/4 v8, 0x0

    .line 729
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 730
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    .line 734
    :cond_0
    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 735
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 736
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 737
    iget-wide v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    .line 771
    :goto_0
    return-wide v4

    .line 740
    :cond_1
    const/16 v3, 0x11

    if-ne v2, v3, :cond_3

    .line 741
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 759
    :cond_2
    :goto_1
    iput v9, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 762
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, "asDecimal":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 768
    .local v4, "result":J
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 769
    iput v8, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 770
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    goto :goto_0

    .line 742
    .end local v0    # "asDecimal":Ljava/math/BigDecimal;
    .end local v4    # "result":J
    :cond_3
    if-eq v2, v6, :cond_4

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 743
    :cond_4
    if-ne v2, v6, :cond_5

    sget-object v3, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 744
    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    .line 745
    :goto_2
    iput-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 747
    :try_start_1
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 748
    .restart local v4    # "result":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 749
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 751
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    goto :goto_1

    .line 744
    :cond_5
    sget-object v3, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 745
    invoke-direct {p0, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 754
    :cond_6
    if-eq v2, v9, :cond_2

    .line 755
    new-instance v3, Lcom/squareup/moshi/JsonDataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 756
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 764
    :catch_1
    move-exception v1

    .line 765
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_3
    new-instance v3, Lcom/squareup/moshi/JsonDataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 766
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 764
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public nextName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "result":Ljava/lang/String;
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

    .line 513
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 514
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    .line 516
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 517
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    .line 518
    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a name but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .prologue
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

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 587
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "result":Ljava/lang/String;
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

    .line 588
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 589
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 590
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 591
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4

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
    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    .line 596
    iget-wide v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 597
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    const/16 v2, 0x11

    if-ne v0, v2, :cond_6

    .line 598
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 600
    .end local v1    # "result":Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a string but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public peek()Lcom/squareup/moshi/JsonReader$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    .line 176
    :pswitch_0
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    .line 202
    :goto_0
    return-object v1

    .line 178
    :pswitch_1
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_OBJECT:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 180
    :pswitch_2
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 182
    :pswitch_3
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_ARRAY:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 187
    :pswitch_4
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NAME:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 190
    :pswitch_5
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->BOOLEAN:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 192
    :pswitch_6
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 197
    :pswitch_7
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->STRING:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 200
    :pswitch_8
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NUMBER:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 202
    :pswitch_9
    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/squareup/moshi/JsonReader$Token;

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method promoteNameToValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    .locals 8
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v4, -0x1

    .line 528
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 529
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    .line 532
    :cond_0
    const/16 v5, 0xc

    if-lt v2, v5, :cond_1

    if-le v2, v7, :cond_3

    :cond_1
    move v3, v4

    .line 561
    :cond_2
    :goto_0
    return v3

    .line 535
    :cond_3
    if-ne v2, v7, :cond_4

    .line 536
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v3

    goto :goto_0

    .line 539
    :cond_4
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v6, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v5, v6}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v3

    .line 540
    .local v3, "result":I
    if-eq v3, v4, :cond_5

    .line 541
    const/4 v4, 0x0

    iput v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 542
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p1, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    goto :goto_0

    .line 549
    :cond_5
    iget-object v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v5, v6

    .line 551
    .local v0, "lastPathName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "nextName":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v3

    .line 554
    if-ne v3, v4, :cond_2

    .line 555
    iput v7, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 556
    iput-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 558
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v5, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aput-object v0, v4, v5

    goto :goto_0
.end method

.method public selectString(Lcom/squareup/moshi/JsonReader$Options;)I
    .locals 7
    .param p1, "options"    # Lcom/squareup/moshi/JsonReader$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xb

    const/4 v3, -0x1

    .line 608
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 609
    .local v1, "p":I
    if-nez v1, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v1

    .line 612
    :cond_0
    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    if-le v1, v6, :cond_3

    :cond_1
    move v2, v3

    .line 636
    :cond_2
    :goto_0
    return v2

    .line 615
    :cond_3
    if-ne v1, v6, :cond_4

    .line 616
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v2

    goto :goto_0

    .line 619
    :cond_4
    iget-object v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v5, p1, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v4, v5}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v2

    .line 620
    .local v2, "result":I
    if-eq v2, v3, :cond_5

    .line 621
    const/4 v3, 0x0

    iput v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 622
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    goto :goto_0

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "nextString":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/squareup/moshi/JsonUtf8Reader;->findString(Ljava/lang/String;Lcom/squareup/moshi/JsonReader$Options;)I

    move-result v2

    .line 630
    if-ne v2, v3, :cond_2

    .line 631
    iput v6, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 632
    iput-object v0, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 633
    iget-object v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v4, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v4

    goto :goto_0
.end method

.method public skipValue()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 899
    iget-boolean v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->failOnUnknown:Z

    if-eqz v2, :cond_0

    .line 900
    new-instance v2, Lcom/squareup/moshi/JsonDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot skip unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    :cond_0
    const/4 v0, 0x0

    .line 904
    .local v0, "count":I
    :cond_1
    iget v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 905
    .local v1, "p":I
    if-nez v1, :cond_2

    .line 906
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    move-result v1

    .line 909
    :cond_2
    if-ne v1, v7, :cond_4

    .line 910
    invoke-virtual {p0, v6}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    .line 930
    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 931
    if-nez v0, :cond_1

    .line 933
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 934
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    const-string v4, "null"

    aput-object v4, v2, v3

    .line 935
    return-void

    .line 912
    :cond_4
    if-ne v1, v6, :cond_5

    .line 913
    invoke-virtual {p0, v7}, Lcom/squareup/moshi/JsonUtf8Reader;->pushScope(I)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_5
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 916
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 917
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 918
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 919
    iget v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 920
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 921
    :cond_7
    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 922
    :cond_8
    invoke-direct {p0}, Lcom/squareup/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto :goto_0

    .line 923
    :cond_9
    const/16 v2, 0x9

    if-eq v1, v2, :cond_a

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 924
    :cond_a
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 925
    :cond_b
    const/16 v2, 0x8

    if-eq v1, v2, :cond_c

    const/16 v2, 0xc

    if-ne v1, v2, :cond_d

    .line 926
    :cond_c
    sget-object v2, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/squareup/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_0

    .line 927
    :cond_d
    const/16 v2, 0x11

    if-ne v1, v2, :cond_3

    .line 928
    iget-object v2, p0, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->skip(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
