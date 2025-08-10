.class public final Lorg/ligi/passandroid/ui/PassExporter;
.super Ljava/lang/Object;
.source "PassExporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000f\u001a\u00020\u0010R\"\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassExporter;",
        "",
        "inputPath",
        "Ljava/io/File;",
        "file",
        "(Ljava/io/File;Ljava/io/File;)V",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "getException",
        "()Ljava/lang/Exception;",
        "setException",
        "(Ljava/lang/Exception;)V",
        "getFile",
        "()Ljava/io/File;",
        "export",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final file:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "inputPath"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "inputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassExporter;->inputPath:Ljava/io/File;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final export()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 15
    nop

    .line 16
    :try_start_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 18
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/io/File;)V

    .line 20
    .local v0, "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExporter;->inputPath:Ljava/io/File;

    new-instance v2, Lorg/ligi/passandroid/ui/PassExporter$export$1;

    invoke-direct {v2}, Lorg/ligi/passandroid/ui/PassExporter$export$1;-><init>()V

    check-cast v2, Lnet/lingala/zip4j/model/ZipParameters;

    .line 26
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 20
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/core/ZipFile;->createZipFileFromFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v6

    .line 29
    .local v6, "exception":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v2

    const-string v3, "when exporting pass to zip"

    move-object v1, v6

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v1, v7}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 31
    iput-object v6, p0, Lorg/ligi/passandroid/ui/PassExporter;->exception:Ljava/lang/Exception;

    .line 32
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExporter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExporter;->file:Ljava/io/File;

    return-object v0
.end method

.method public final setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassExporter;->exception:Ljava/lang/Exception;

    return-void
.end method
