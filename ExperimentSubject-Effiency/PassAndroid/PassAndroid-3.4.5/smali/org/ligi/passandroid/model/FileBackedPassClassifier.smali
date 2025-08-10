.class public Lorg/ligi/passandroid/model/FileBackedPassClassifier;
.super Lorg/ligi/passandroid/model/PassClassifier;
.source "FileBackedPassClassifier.java"


# instance fields
.field private final adapter:Lcom/squareup/moshi/JsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/JsonAdapter",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private final backed_file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/ligi/passandroid/model/PassStore;Lcom/squareup/moshi/Moshi;)V
    .locals 1
    .param p1, "backed_file"    # Ljava/io/File;
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
    .param p3, "moshi"    # Lcom/squareup/moshi/Moshi;

    .prologue
    .line 18
    invoke-static {p1, p3}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->loadMap(Ljava/io/File;Lcom/squareup/moshi/Moshi;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ligi/passandroid/model/PassClassifier;-><init>(Ljava/util/Map;Lorg/ligi/passandroid/model/PassStore;)V

    .line 20
    iput-object p1, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->backed_file:Ljava/io/File;

    .line 21
    invoke-static {p3}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->getAdapter(Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->adapter:Lcom/squareup/moshi/JsonAdapter;

    .line 22
    return-void
.end method

.method private static getAdapter(Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 1
    .param p0, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getBufferedSinkFromMaybeCreatedFile()Lokio/BufferedSink;
    .locals 3

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->backed_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->backed_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 47
    .local v1, "parentFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->backed_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 53
    .end local v1    # "parentFile":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->backed_file:Ljava/io/File;

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 56
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadMap(Ljava/io/File;Lcom/squareup/moshi/Moshi;)Ljava/util/Map;
    .locals 3
    .param p0, "backed_file"    # Ljava/io/File;
    .param p1, "moshi"    # Lcom/squareup/moshi/Moshi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :try_start_0
    invoke-static {p1}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->getAdapter(Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public processDataChange()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lorg/ligi/passandroid/model/PassClassifier;->processDataChange()V

    .line 65
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->adapter:Lcom/squareup/moshi/JsonAdapter;

    if-eqz v2, :cond_0

    .line 66
    invoke-direct {p0}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->getBufferedSinkFromMaybeCreatedFile()Lokio/BufferedSink;

    move-result-object v0

    .line 68
    .local v0, "buffer":Lokio/BufferedSink;
    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    iget-object v2, p0, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->adapter:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;->getTopicByIdMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lokio/BufferedSink;Ljava/lang/Object;)V

    .line 71
    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "buffer":Lokio/BufferedSink;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "buffer":Lokio/BufferedSink;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
