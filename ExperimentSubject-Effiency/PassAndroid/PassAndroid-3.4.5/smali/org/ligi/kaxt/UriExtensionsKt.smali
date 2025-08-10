.class public final Lorg/ligi/kaxt/UriExtensionsKt;
.super Ljava/lang/Object;
.source "UriExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "loadImage",
        "Ljava/io/File;",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# direct methods
.method public static final loadImage(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "$receiver"    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v2, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;

    invoke-direct {v2, p1}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lorg/ligi/kaxt/converter/ImageFromIntentUriToFileConverter;->extract(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .local v1, "p1":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v1    # "p1":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
