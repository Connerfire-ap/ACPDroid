.class Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_9_tr"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 870
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;->ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x206261
        0x206269
        0x206275
        0x206461
        0x206465
        0x206765
        0x206861
        0x20696c
        0x206b61
        0x206b6f
        0x206d61
        0x206f6c
        0x207361
        0x207461
        0x207665
        0x207961
        0x612062
        0x616b20
        0x616c61
        0x616d61
        0x616e20
        0x616efd
        0x617220
        0x617261
        0x6172fd
        0x6173fd
        0x617961
        0x626972
        0x646120
        0x646520
        0x646920
        0x652062
        0x65206b
        0x656469
        0x656e20
        0x657220
        0x657269
        0x657369
        0x696c65
        0x696e20
        0x696e69
        0x697220
        0x6c616e
        0x6c6172
        0x6c6520
        0x6c6572
        0x6e2061
        0x6e2062
        0x6e206b
        0x6e6461
        0x6e6465
        0x6e6520
        0x6e6920
        0x6e696e
        0x6efd20
        0x72696e
        0x72fd6e
        0x766520
        0x796120
        0x796f72
        0xfd6e20
        0xfd6e64
        0xfd6efd
        0xfdf0fd
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    const-string v0, "tr"

    return-object v0
.end method

.method public match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 6
    .param p1, "det"    # Lcom/ibm/icu/text/CharsetDetector;

    .prologue
    .line 884
    iget-boolean v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    if-eqz v0, :cond_0

    const-string v4, "windows-1254"

    .line 885
    .local v4, "name":Ljava/lang/String;
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;->ngrams:[I

    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;->match(Lcom/ibm/icu/text/CharsetDetector;[I[B)I

    move-result v3

    .line 886
    .local v3, "confidence":I
    if-nez v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 884
    .end local v3    # "confidence":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const-string v4, "ISO-8859-9"

    goto :goto_0

    .line 886
    .restart local v3    # "confidence":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/ibm/icu/text/CharsetMatch;

    const-string v5, "tr"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
