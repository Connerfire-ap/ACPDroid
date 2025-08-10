.class public Lcom/ibm/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    }
.end annotation


# static fields
.field private static final ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field private fEnabledRecognizers:[Z

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field private fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;>;"
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_UTF8;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_UTF8;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v1, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    invoke-direct {v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Lcom/ibm/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    .line 512
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    .line 431
    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    .line 435
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 453
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 56
    return-void
.end method

.method private MungeInput()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 347
    const/4 v8, 0x0

    .line 348
    .local v8, "srci":I
    const/4 v2, 0x0

    .line 350
    .local v2, "dsti":I
    const/4 v5, 0x0

    .line 351
    .local v5, "inMarkup":Z
    const/4 v7, 0x0

    .line 352
    .local v7, "openTags":I
    const/4 v1, 0x0

    .line 360
    .local v1, "badTags":I
    iget-boolean v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    if-eqz v10, :cond_5

    .line 361
    const/4 v8, 0x0

    :goto_0
    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-ge v8, v10, :cond_4

    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v10, v10

    if-ge v2, v10, :cond_4

    .line 362
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v0, v10, v8

    .line 363
    .local v0, "b":B
    const/16 v10, 0x3c

    if-ne v0, v10, :cond_1

    .line 364
    if-eqz v5, :cond_0

    .line 365
    add-int/lit8 v1, v1, 0x1

    .line 367
    :cond_0
    const/4 v5, 0x1

    .line 368
    add-int/lit8 v7, v7, 0x1

    .line 371
    :cond_1
    if-nez v5, :cond_2

    .line 372
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "dsti":I
    .local v3, "dsti":I
    aput-byte v0, v10, v2

    move v2, v3

    .line 375
    .end local v3    # "dsti":I
    .restart local v2    # "dsti":I
    :cond_2
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_3

    .line 376
    const/4 v5, 0x0

    .line 361
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "b":B
    :cond_4
    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 388
    :cond_5
    const/4 v10, 0x5

    if-lt v7, v10, :cond_6

    div-int/lit8 v10, v7, 0x5

    if-lt v10, v1, :cond_6

    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    const/16 v11, 0x64

    if-ge v10, v11, :cond_9

    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    const/16 v11, 0x258

    if-le v10, v11, :cond_9

    .line 390
    :cond_6
    iget v6, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 392
    .local v6, "limit":I
    const/16 v10, 0x1f40

    if-le v6, v10, :cond_7

    .line 393
    const/16 v6, 0x1f40

    .line 396
    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_8

    .line 397
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v11, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v11, v11, v8

    aput-byte v11, v10, v8

    .line 396
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 399
    :cond_8
    iput v8, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 406
    .end local v6    # "limit":I
    :cond_9
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([SS)V

    .line 407
    const/4 v8, 0x0

    :goto_2
    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    if-ge v8, v10, :cond_a

    .line 408
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v10, v10, v8

    and-int/lit16 v9, v10, 0xff

    .line 409
    .local v9, "val":I
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v11, v10, v9

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v10, v9

    .line 407
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 412
    .end local v9    # "val":I
    :cond_a
    iput-boolean v12, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 413
    const/16 v4, 0x80

    .local v4, "i":I
    :goto_3
    const/16 v10, 0x9f

    if-gt v4, v10, :cond_b

    .line 414
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v10, v10, v4

    if-eqz v10, :cond_c

    .line 415
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 419
    :cond_b
    return-void

    .line 413
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    sget-object v2, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 302
    .local v0, "allCharsetNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 303
    sget-object v2, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v2, v2, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Lcom/ibm/icu/text/CharsetMatch;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detectAll()[Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v0

    .line 162
    .local v0, "matches":[Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public detectAll()[Lcom/ibm/icu/text/CharsetMatch;
    .locals 7

    .prologue
    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v3, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ibm/icu/text/CharsetMatch;>;"
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetDetector;->MungeInput()V

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 192
    sget-object v6, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 193
    .local v4, "rcinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v6, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v0, v6, v1

    .line 194
    .local v0, "active":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 195
    iget-object v6, v4, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v6, p0}, Lcom/ibm/icu/text/CharsetRecognizer;->match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v2

    .line 196
    .local v2, "m":Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v2    # "m":Lcom/ibm/icu/text/CharsetMatch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "active":Z
    :cond_1
    iget-boolean v0, v4, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    goto :goto_1

    .line 201
    .end local v4    # "rcinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Lcom/ibm/icu/text/CharsetMatch;

    .line 204
    .local v5, "resultArray":[Lcom/ibm/icu/text/CharsetMatch;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "resultArray":[Lcom/ibm/icu/text/CharsetMatch;
    check-cast v5, [Lcom/ibm/icu/text/CharsetMatch;

    .line 205
    .restart local v5    # "resultArray":[Lcom/ibm/icu/text/CharsetMatch;
    return-object v5
.end method

.method public enableInputFilter(Z)Z
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 337
    .local v0, "previous":Z
    iput-boolean p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 339
    return v0
.end method

.method public getDetectableCharsets()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 526
    .local v1, "csnames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 527
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 528
    .local v3, "rcinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v4, :cond_1

    iget-boolean v0, v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    .line 529
    .local v0, "active":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 530
    iget-object v4, v3, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "active":Z
    :cond_1
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v0, v4, v2

    goto :goto_1

    .line 533
    .end local v3    # "rcinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 232
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 235
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;

    .line 237
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v1

    .line 239
    .local v1, "match":Lcom/ibm/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    .line 245
    .end local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :goto_0
    return-object v2

    .line 243
    .restart local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 244
    .end local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # [B
    .param p2, "declaredEncoding"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 267
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText([B)Lcom/ibm/icu/text/CharsetDetector;

    .line 272
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v1

    .line 274
    .local v1, "match":Lcom/ibm/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    .line 280
    .end local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :goto_0
    return-object v2

    .line 278
    .restart local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 279
    .end local v1    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public inputFilterEnabled()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setDetectableCharset(Ljava/lang/String;Z)Lcom/ibm/icu/text/CharsetDetector;
    .locals 7
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    const/4 v3, -0x1

    .line 554
    .local v3, "modIdx":I
    const/4 v2, 0x0

    .line 555
    .local v2, "isDefaultVal":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 556
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 557
    .local v0, "csrinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    iget-object v4, v0, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 558
    move v3, v1

    .line 559
    iget-boolean v4, v0, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    if-ne v4, p2, :cond_1

    const/4 v2, 0x1

    .line 563
    .end local v0    # "csrinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_0
    :goto_1
    if-gez v3, :cond_3

    .line 565
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid encoding: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    .restart local v0    # "csrinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 555
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "csrinfo":Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;
    :cond_3
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 570
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    .line 573
    const/4 v1, 0x0

    :goto_2
    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 574
    iget-object v5, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    sget-object v4, Lcom/ibm/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-boolean v4, v4, Lcom/ibm/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    aput-boolean v4, v5, v1

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v4, :cond_5

    .line 579
    iget-object v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aput-boolean p2, v4, v3

    .line 582
    :cond_5
    return-object p0
.end method

.method public setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f40

    .line 114
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    .line 115
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 116
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 119
    const/4 v2, 0x0

    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 120
    const/16 v1, 0x1f40

    .line 121
    .local v1, "remainingLength":I
    :goto_0
    if-lez v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iget v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 124
    .local v0, "bytesRead":I
    if-gtz v0, :cond_1

    .line 130
    .end local v0    # "bytesRead":I
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 132
    return-object p0

    .line 127
    .restart local v0    # "bytesRead":I
    :cond_1
    iget v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 128
    sub-int/2addr v1, v0

    .line 129
    goto :goto_0
.end method

.method public setText([B)Lcom/ibm/icu/text/CharsetDetector;
    .locals 1
    .param p1, "in"    # [B

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 90
    array-length v0, p1

    iput v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 92
    return-object p0
.end method
