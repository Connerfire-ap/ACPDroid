.class Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
.super Lcom/ibm/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_BE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "UTF-16BE"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 8
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    const/16 v7, 0x64

    .line 59
    iget-object v4, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 60
    .local v4, "input":[B
    const/16 v3, 0xa

    .line 62
    .local v3, "confidence":I
    array-length v5, v4

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    .local v0, "bytesToCheck":I
    const/4 v1, 0x0

    .local v1, "charIndex":I
    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_0

    .line 64
    aget-byte v5, v4, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v4, v6

    invoke-static {v5, v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->codeUnit16FromBytes(BB)I

    move-result v2

    .line 65
    .local v2, "codeUnit":I
    if-nez v1, :cond_2

    const v5, 0xfeff

    if-ne v2, v5, :cond_2

    .line 66
    const/16 v3, 0x64

    .line 74
    .end local v2    # "codeUnit":I
    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    if-ge v3, v7, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 77
    :cond_1
    if-lez v3, :cond_3

    .line 78
    new-instance v5, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v5, p1, p0, v3}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    .line 80
    :goto_1
    return-object v5

    .line 69
    .restart local v2    # "codeUnit":I
    :cond_2
    invoke-static {v2, v3}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;->adjustConfidence(II)I

    move-result v3

    .line 70
    if-eqz v3, :cond_0

    if-eq v3, v7, :cond_0

    .line 63
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 80
    .end local v2    # "codeUnit":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
