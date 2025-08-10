.class abstract Lcom/ibm/icu/text/CharsetRecog_Unicode;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method

.method static adjustConfidence(II)I
    .locals 1
    .param p0, "codeUnit"    # I
    .param p1, "confidence"    # I

    .prologue
    .line 37
    if-nez p0, :cond_2

    .line 38
    add-int/lit8 p1, p1, -0xa

    .line 42
    :cond_0
    :goto_0
    if-gez p1, :cond_5

    .line 43
    const/4 p1, 0x0

    .line 47
    :cond_1
    :goto_1
    return p1

    .line 39
    :cond_2
    const/16 v0, 0x20

    if-lt p0, v0, :cond_3

    const/16 v0, 0xff

    if-le p0, v0, :cond_4

    :cond_3
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 40
    :cond_4
    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 44
    :cond_5
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 45
    const/16 p1, 0x64

    goto :goto_1
.end method

.method static codeUnit16FromBytes(BB)I
    .locals 2
    .param p0, "hi"    # B
    .param p1, "lo"    # B

    .prologue
    .line 28
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
.end method
