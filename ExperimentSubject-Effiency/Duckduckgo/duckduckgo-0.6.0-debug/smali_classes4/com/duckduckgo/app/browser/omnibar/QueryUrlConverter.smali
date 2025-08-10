.class public final Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;
.super Ljava/lang/Object;
.source "QueryUrlConverter.kt"

# interfaces
.implements Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryUrlConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryUrlConverter.kt\ncom/duckduckgo/app/browser/omnibar/QueryUrlConverter\n*L\n1#1,76:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
        "Lcom/duckduckgo/app/browser/omnibar/OmnibarEntryConverter;",
        "requestRewriter",
        "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
        "(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;)V",
        "convertQueryToUri",
        "Landroid/net/Uri;",
        "inputQuery",
        "",
        "convertUri",
        "input",
        "isValidHost",
        "",
        "host",
        "isWebUrl",
        "Companion",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final Companion:Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter$Companion;

.field private static final baseUrl:Ljava/lang/String; = "duckduckgo.com"

.field private static final localhost:Ljava/lang/String; = "localhost"

.field private static final space:Ljava/lang/String; = " "

.field private static final webUrlRegex:Lkotlin/text/Regex;


# instance fields
.field private final requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5a43346d00a06e5L

    const/16 v2, 0x1e

    const-string v3, "com/duckduckgo/app/browser/omnibar/QueryUrlConverter"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->Companion:Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter$Companion;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 33
    sget-object v1, Landroid/support/v4/util/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    const-string v3, "PatternsCompat.WEB_URL"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    sput-object v3, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->webUrlRegex:Lkotlin/text/Regex;

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;)V
    .locals 3
    .param p1, "requestRewriter"    # Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "requestRewriter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final isValidHost(Ljava/lang/String;)Z
    .locals 7
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const-string v1, "localhost"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return v2

    .line 48
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, " "

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return v4

    .line 49
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "!"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return v4

    .line 51
    :cond_2
    sget-object v1, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->webUrlRegex:Lkotlin/text/Regex;

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return v2

    .line 52
    :cond_3
    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return v4
.end method


# virtual methods
.method public convertQueryToUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "inputQuery"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "inputQuery"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 56
    nop

    .line 59
    nop

    .line 56
    nop

    .line 58
    nop

    .line 56
    nop

    .line 57
    nop

    .line 56
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const/16 v3, 0xf

    aput-boolean v2, v0, v3

    .line 57
    const-string v3, "https"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/16 v3, 0x10

    aput-boolean v2, v0, v3

    .line 58
    const-string v3, "q"

    invoke-virtual {v1, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/16 v3, 0x11

    aput-boolean v2, v0, v3

    .line 59
    const-string v3, "duckduckgo.com"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 56
    const/16 v3, 0x12

    aput-boolean v2, v0, v3

    .line 61
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    const-string v4, "uriBuilder"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->addCustomQueryParams(Landroid/net/Uri$Builder;)V

    const/16 v3, 0x13

    aput-boolean v2, v0, v3

    .line 63
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "uriBuilder.build()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x14

    aput-boolean v2, v0, v4

    return-object v3
.end method

.method public convertUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "Uri.parse(input)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/duckduckgo/app/global/UriExtensionKt;->withScheme(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x16

    aput-boolean v2, v0, v3

    .line 69
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "duckduckgo.com"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    aput-boolean v2, v0, v3

    .line 70
    iget-object v3, p0, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    invoke-virtual {v3, v1}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->rewriteRequestWithCustomQueryParams(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "requestRewriter.rewriteR\u2026eryParams(uri).toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x18

    aput-boolean v2, v0, v4

    return-object v3

    .line 73
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uri.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x19

    aput-boolean v2, v0, v4

    return-object v3
.end method

.method public isWebUrl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "inputQuery"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "inputQuery"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Uri.parse(inputQuery)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/duckduckgo/app/global/UriExtensionKt;->withScheme(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    aput-boolean v2, v0, v2

    .line 38
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const/4 v5, 0x2

    if-nez v4, :cond_0

    aput-boolean v2, v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-nez v4, :cond_4

    const/4 v4, 0x3

    aput-boolean v2, v0, v4

    .line 39
    :goto_0
    invoke-virtual {v3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    aput-boolean v2, v0, v4

    return v1

    .line 40
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x6

    aput-boolean v2, v0, v4

    return v1

    .line 41
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "uri.path"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const-string v6, " "

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v4, v6, v1, v5, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    aput-boolean v2, v0, v4

    return v1

    .line 43
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uri.host"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;->isValidHost(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x8

    aput-boolean v2, v0, v4

    return v1

    .line 38
    :cond_4
    const/4 v4, 0x4

    aput-boolean v2, v0, v4

    return v1
.end method
