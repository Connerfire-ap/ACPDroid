.class public Lorg/ligi/passandroid/model/AppleStylePassTranslation;
.super Ljava/util/HashMap;
.source "AppleStylePassTranslation.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static readFileAsStringGuessEncoding(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v3, v5, [B

    .line 59
    .local v3, "fileData":[B
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v1, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 61
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 63
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/16 v6, -0x11

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    const/16 v6, -0x45

    if-ne v5, v6, :cond_0

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    const/16 v6, -0x41

    if-ne v5, v6, :cond_0

    .line 64
    array-length v5, v3

    add-int/lit8 v5, v5, -0x3

    new-array v0, v5, [B

    .line 65
    .local v0, "crop":[B
    const/4 v5, 0x3

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 79
    .end local v0    # "crop":[B
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v3    # "fileData":[B
    :goto_0
    return-object v5

    .line 69
    .restart local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "fileData":[B
    :cond_0
    new-instance v5, Lcom/ibm/icu/text/CharsetDetector;

    invoke-direct {v5}, Lcom/ibm/icu/text/CharsetDetector;-><init>()V

    invoke-virtual {v5, v3}, Lcom/ibm/icu/text/CharsetDetector;->setText([B)Lcom/ibm/icu/text/CharsetDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 71
    .local v4, "match":Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v4, :cond_1

    .line 72
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v5

    .line 75
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    .end local v1    # "dataInputStream":Ljava/io/DataInputStream;
    .end local v3    # "fileData":[B
    .end local v4    # "match":Lcom/ibm/icu/text/CharsetMatch;
    :catch_1
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v5}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v5

    const-string v6, "problem_reading_translation"

    invoke-interface {v5, v6, v2, v8}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 78
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static removeLeadingClutter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->removeLeadingClutter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    .end local p0    # "s":Ljava/lang/String;
    :cond_1
    return-object p0
.end method


# virtual methods
.method public loadFromFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-static {p1}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->readFileAsStringGuessEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->loadFromString(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public loadFromString(Ljava/lang/String;)V
    .locals 8
    .param p1, "inputString"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 44
    :cond_0
    return-void

    .line 37
    :cond_1
    const-string v2, "\";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 38
    .local v1, "pair":Ljava/lang/String;
    const-string v6, "\" ?= ?\""

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "kv":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 40
    aget-object v6, v0, v3

    invoke-static {v6}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->removeLeadingClutter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {p0, v6, v7}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
