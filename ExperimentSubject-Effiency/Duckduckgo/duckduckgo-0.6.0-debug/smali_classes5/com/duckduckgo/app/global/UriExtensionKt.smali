.class public final Lcom/duckduckgo/app/global/UriExtensionKt;
.super Ljava/lang/Object;
.source "UriExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUriExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UriExtension.kt\ncom/duckduckgo/app/global/UriExtensionKt\n*L\n1#1,48:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u001a\n\u0010\u000b\u001a\u00020\u0002*\u00020\u0002\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\"\u0015\u0010\n\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "baseHost",
        "",
        "Landroid/net/Uri;",
        "getBaseHost",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "hasIpHost",
        "",
        "getHasIpHost",
        "(Landroid/net/Uri;)Z",
        "isHttp",
        "isHttps",
        "withScheme",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xecd5ad989c9aef4L    # -1.8970629393531796E237

    const/16 v2, 0x15

    const-string v3, "com/duckduckgo/app/global/UriExtensionKt"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public static final getBaseHost(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$baseHost"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$baseHost"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 35
    invoke-static {p0}, Lcom/duckduckgo/app/global/UriExtensionKt;->withScheme(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "www."

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    :goto_0
    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public static final getHasIpHost(Landroid/net/Uri;)Z
    .locals 5
    .param p0, "$this$hasIpHost"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$hasIpHost"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 45
    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    aput-boolean v2, v0, v3

    .line 46
    .local v1, "ipRegex":Lkotlin/text/Regex;
    invoke-static {p0}, Lcom/duckduckgo/app/global/UriExtensionKt;->getBaseHost(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x12

    aput-boolean v2, v0, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x13

    aput-boolean v2, v0, v4

    :goto_0
    const/16 v4, 0x14

    aput-boolean v2, v0, v4

    return v3
.end method

.method public static final isHttp(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "$this$isHttp"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$isHttp"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 38
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "http"

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    :goto_0
    const/16 v3, 0xb

    aput-boolean v2, v0, v3

    return v1
.end method

.method public static final isHttps(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "$this$isHttps"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$isHttps"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 41
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "https"

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0xd

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0xe

    aput-boolean v2, v0, v3

    :goto_0
    const/16 v3, 0xf

    aput-boolean v2, v0, v3

    return v1
.end method

.method public static final withScheme(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p0, "$this$withScheme"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/global/UriExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$withScheme"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 23
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "parse(\"$http://${toString()}\")"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    return-object v1

    .line 27
    :cond_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-object p0
.end method
