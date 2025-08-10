.class Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field protected byteIndex:I

.field protected byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field protected spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1
    .param p1, "theNgramList"    # [I
    .param p2, "theByteMap"    # [B

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    .line 28
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 40
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    .line 41
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    .line 43
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 45
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 46
    return-void
.end method

.method private lookup(I)V
    .locals 1
    .param p1, "thisNgram"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 94
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    .line 98
    :cond_0
    return-void
.end method

.method private nextByte(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 3
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    .line 108
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_0

    .line 109
    const/4 v0, -0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method private static search([II)I
    .locals 2
    .param p0, "table"    # [I
    .param p1, "value"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "index":I
    const/16 v1, 0x20

    aget v1, p0, v1

    if-gt v1, p1, :cond_0

    .line 56
    add-int/lit8 v0, v0, 0x20

    .line 59
    :cond_0
    add-int/lit8 v1, v0, 0x10

    aget v1, p0, v1

    if-gt v1, p1, :cond_1

    .line 60
    add-int/lit8 v0, v0, 0x10

    .line 63
    :cond_1
    add-int/lit8 v1, v0, 0x8

    aget v1, p0, v1

    if-gt v1, p1, :cond_2

    .line 64
    add-int/lit8 v0, v0, 0x8

    .line 67
    :cond_2
    add-int/lit8 v1, v0, 0x4

    aget v1, p0, v1

    if-gt v1, p1, :cond_3

    .line 68
    add-int/lit8 v0, v0, 0x4

    .line 71
    :cond_3
    add-int/lit8 v1, v0, 0x2

    aget v1, p0, v1

    if-gt v1, p1, :cond_4

    .line 72
    add-int/lit8 v0, v0, 0x2

    .line 75
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gt v1, p1, :cond_5

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 79
    :cond_5
    aget v1, p0, v0

    if-le v1, p1, :cond_6

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 83
    :cond_6
    if-ltz v0, :cond_7

    aget v1, p0, v0

    if-eq v1, p1, :cond_8

    .line 84
    :cond_7
    const/4 v0, -0x1

    .line 87
    .end local v0    # "index":I
    :cond_8
    return v0
.end method


# virtual methods
.method protected addByte(I)V
    .locals 2
    .param p1, "b"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 103
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    .line 104
    return-void
.end method

.method public parse(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 1
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    .line 137
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Lcom/ibm/icu/text/CharsetDetector;B)I

    move-result v0

    return v0
.end method

.method public parse(Lcom/ibm/icu/text/CharsetDetector;B)I
    .locals 6
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;
    .param p2, "spaceCh"    # B

    .prologue
    .line 142
    iput-byte p2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    .line 144
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->parseCharacters(Lcom/ibm/icu/text/CharsetDetector;)V

    .line 147
    iget-byte v2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 149
    iget v2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double v2, v2

    iget v4, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 157
    .local v0, "rawPercent":D
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 158
    const/16 v2, 0x62

    .line 161
    :goto_0
    return v2

    :cond_0
    const-wide v2, 0x4072c00000000000L    # 300.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    goto :goto_0
.end method

.method protected parseCharacters(Lcom/ibm/icu/text/CharsetDetector;)V
    .locals 4
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "ignoreSpace":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_4

    .line 121
    iget-object v3, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v2, v3, v0

    .line 124
    .local v2, "mb":B
    if-eqz v2, :cond_0

    .line 125
    iget-byte v3, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 129
    :cond_2
    iget-byte v3, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 133
    .end local v2    # "mb":B
    :cond_4
    return-void
.end method
