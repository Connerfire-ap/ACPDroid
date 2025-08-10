.class public final Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
.super Ljava/lang/Object;
.source "JSONUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/utils/JSONUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JSONL"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_TAG:Ljava/lang/String; = "JSONLIterator"


# instance fields
.field private file:Ljava/io/File;

.field private fr:Ljava/io/FileReader;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->file:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->fr:Ljava/io/FileReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    nop

    .line 32
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONLIterator"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    throw v0
.end method


# virtual methods
.method public getLineN(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->fr:Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 39
    .local v1, "idx":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 40
    if-ne v1, p1, :cond_0

    .line 41
    return-object v3

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_1
    nop

    .line 48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Could not find line at offset"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IOError in reading line"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->fr:Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->file:Ljava/io/File;

    invoke-direct {v1, p0, v0, v2}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL$JSONIterator;-><init>(Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;Ljava/io/BufferedReader;Ljava/io/File;)V

    return-object v1
.end method
