.class Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;
.super Lcom/ibm/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_sjis"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    return-void

    :array_0
    .array-data 4
        0x8140
        0x8141
        0x8142
        0x8145
        0x815b
        0x8169
        0x816a
        0x8175
        0x8176
        0x82a0
        0x82a2
        0x82a4
        0x82a9
        0x82aa
        0x82ab
        0x82ad
        0x82af
        0x82b1
        0x82b3
        0x82b5
        0x82b7
        0x82bd
        0x82be
        0x82c1
        0x82c4
        0x82c5
        0x82c6
        0x82c8
        0x82c9
        0x82cc
        0x82cd
        0x82dc
        0x82e0
        0x82e7
        0x82e8
        0x82e9
        0x82ea
        0x82f0
        0x82f1
        0x8341
        0x8343
        0x834e
        0x834f
        0x8358
        0x835e
        0x8362
        0x8367
        0x8375
        0x8376
        0x8389
        0x838a
        0x838b
        0x838d
        0x8393
        0x8e96
        0x93fa
        0x95aa
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "ja"

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "Shift_JIS"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 2
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    .line 225
    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->match(Lcom/ibm/icu/text/CharsetDetector;[I)I

    move-result v0

    .line 226
    .local v0, "confidence":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_0
.end method

.method nextChar(Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;Lcom/ibm/icu/text/CharsetDetector;)Z
    .locals 6
    .param p1, "it"    # Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;
    .param p2, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    const/16 v5, 0x7f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iget v4, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v4, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 201
    iput-boolean v2, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 203
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 204
    .local v0, "firstByte":I
    if-gez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    if-le v0, v5, :cond_2

    const/16 v4, 0xa0

    if-le v0, v4, :cond_3

    const/16 v4, 0xdf

    if-gt v0, v4, :cond_3

    :cond_2
    move v2, v3

    .line 209
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v1

    .line 213
    .local v1, "secondByte":I
    if-ltz v1, :cond_0

    .line 216
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    iput v2, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 217
    const/16 v2, 0x40

    if-lt v1, v2, :cond_4

    if-le v1, v5, :cond_6

    :cond_4
    const/16 v2, 0x80

    if-lt v1, v2, :cond_5

    const/16 v2, 0xff

    if-le v1, v2, :cond_6

    .line 219
    :cond_5
    iput-boolean v3, p1, Lcom/ibm/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    :cond_6
    move v2, v3

    .line 221
    goto :goto_0
.end method
