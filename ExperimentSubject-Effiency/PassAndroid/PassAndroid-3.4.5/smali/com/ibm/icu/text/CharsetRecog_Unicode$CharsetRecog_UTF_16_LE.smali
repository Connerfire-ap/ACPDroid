.class Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Lcom/ibm/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 8
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    const/16 v7, 0x64

    .line 93
    iget-object v4, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 94
    .local v4, "input":[B
    const/16 v3, 0xa

    .line 96
    .local v3, "confidence":I
    array-length v5, v4

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    .local v0, "bytesToCheck":I
    const/4 v1, 0x0

    .local v1, "charIndex":I
    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    .line 98
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v4, v5

    aget-byte v6, v4, v1

    invoke-static {v5, v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->codeUnit16FromBytes(BB)I

    move-result v2

    .line 99
    .local v2, "codeUnit":I
    if-nez v1, :cond_2

    const v5, 0xfeff

    if-ne v2, v5, :cond_2

    .line 100
    const/16 v3, 0x64

    .line 108
    .end local v2    # "codeUnit":I
    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    if-ge v3, v7, :cond_1

    .line 109
    const/4 v3, 0x0

    .line 111
    :cond_1
    if-lez v3, :cond_3

    .line 112
    new-instance v5, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v5, p1, p0, v3}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    .line 114
    :goto_1
    return-object v5

    .line 103
    .restart local v2    # "codeUnit":I
    :cond_2
    invoke-static {v2, v3}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;->adjustConfidence(II)I

    move-result v3

    .line 104
    if-eqz v3, :cond_0

    if-eq v3, v7, :cond_0

    .line 97
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 114
    .end local v2    # "codeUnit":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
