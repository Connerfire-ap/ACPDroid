.class public final Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;
.super Ljava/lang/Object;
.source "DuckDuckGoRequestRewriter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuckDuckGoRequestRewriter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DuckDuckGoRequestRewriter.kt\ncom/duckduckgo/app/browser/DuckDuckGoRequestRewriter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n704#2:63\n777#2,2:64\n1642#2,2:66\n*E\n*S KotlinDebug\n*F\n+ 1 DuckDuckGoRequestRewriter.kt\ncom/duckduckgo/app/browser/DuckDuckGoRequestRewriter\n*L\n40#1:63\n40#1,2:64\n41#1,2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\nH\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
        "",
        "duckDuckGoUrlDetector",
        "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
        "(Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;)V",
        "addCustomQueryParams",
        "",
        "builder",
        "Landroid/net/Uri$Builder;",
        "formatAppVersion",
        "",
        "rewriteRequestWithCustomQueryParams",
        "Landroid/net/Uri;",
        "request",
        "shouldRewriteRequest",
        "",
        "Landroid/webkit/WebResourceRequest;",
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

.field public static final Companion:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter$Companion;

.field private static final appVersionParam:Ljava/lang/String; = "tappv"

.field private static final querySource:Ljava/lang/String; = "ddg_android"

.field private static final sourceParam:Ljava/lang/String; = "t"


# instance fields
.field private final duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7eae3892676acd9eL    # 1.6191022208611017E302

    const/16 v2, 0x26

    const-string v3, "com/duckduckgo/app/browser/DuckDuckGoRequestRewriter"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->Companion:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter$Companion;

    const/16 v1, 0x25

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;)V
    .locals 3
    .param p1, "duckDuckGoUrlDetector"    # Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "duckDuckGoUrlDetector"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final formatAppVersion()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    .line 59
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "0.6.0"

    const-string v4, "."

    const-string v5, "_"

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android_%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x22

    aput-boolean v1, v0, v3

    return-object v2
.end method


# virtual methods
.method public final addCustomQueryParams(Landroid/net/Uri$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/net/Uri$Builder;

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "builder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 54
    invoke-direct {p0}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->formatAppVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tappv"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 55
    const-string v1, "t"

    const-string v3, "ddg_android"

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final rewriteRequestWithCustomQueryParams(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .param p1, "request"    # Landroid/net/Uri;

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 33
    nop

    .line 37
    nop

    .line 33
    nop

    .line 36
    nop

    .line 33
    nop

    .line 35
    nop

    .line 33
    nop

    .line 34
    nop

    .line 33
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    aput-boolean v2, v0, v2

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x2

    aput-boolean v2, v0, v4

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x3

    aput-boolean v2, v0, v4

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x4

    aput-boolean v2, v0, v4

    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 33
    const/4 v4, 0x5

    aput-boolean v2, v0, v4

    .line 39
    .local v3, "builder":Landroid/net/Uri$Builder;
    nop

    .line 41
    nop

    .line 39
    nop

    .line 40
    nop

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    const-string v5, "request.queryParameterNames"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .line 40
    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .local v5, "$i$f$filter":I
    const/4 v6, 0x6

    aput-boolean v2, v0, v6

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .local v8, "$i$f$filterTo":I
    const/4 v9, 0x7

    aput-boolean v2, v0, v9

    .line 64
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/16 v10, 0x8

    aput-boolean v2, v0, v10

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .local v11, "it":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "$i$a$-filter-DuckDuckGoRequestRewriter$rewriteRequestWithCustomQueryParams$1":I
    const/16 v13, 0x9

    aput-boolean v2, v0, v13

    .line 40
    const-string v13, "t"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v2

    if-nez v13, :cond_0

    const/16 v13, 0xa

    aput-boolean v2, v0, v13

    goto :goto_1

    :cond_0
    const-string v13, "tappv"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v2

    if-nez v13, :cond_1

    const/16 v13, 0xb

    aput-boolean v2, v0, v13

    :goto_1
    const/16 v13, 0xd

    aput-boolean v2, v0, v13

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    const/16 v13, 0xc

    aput-boolean v2, v0, v13

    const/4 v11, 0x1

    .end local v11    # "it":Ljava/lang/String;
    .end local v12    # "$i$a$-filter-DuckDuckGoRequestRewriter$rewriteRequestWithCustomQueryParams$1":I
    :goto_2
    if-nez v11, :cond_2

    const/16 v11, 0xe

    aput-boolean v2, v0, v11

    goto :goto_0

    :cond_2
    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    const/16 v10, 0xf

    aput-boolean v2, v0, v10

    goto :goto_0

    .line 65
    :cond_3
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    move-object v4, v6

    check-cast v4, Ljava/util/List;

    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 41
    .local v4, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .local v5, "$i$f$forEach":I
    const/16 v6, 0x10

    aput-boolean v2, v0, v6

    .line 66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v7, 0x11

    aput-boolean v2, v0, v7

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "$i$a$-forEach-DuckDuckGoRequestRewriter$rewriteRequestWithCustomQueryParams$2":I
    const/16 v10, 0x12

    aput-boolean v2, v0, v10

    .line 41
    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-forEach-DuckDuckGoRequestRewriter$rewriteRequestWithCustomQueryParams$2":I
    const/16 v7, 0x13

    aput-boolean v2, v0, v7

    goto :goto_3

    .line 67
    :cond_4
    const/16 v6, 0x14

    aput-boolean v2, v0, v6

    .line 43
    .end local v4    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    const-string v4, "builder"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->addCustomQueryParams(Landroid/net/Uri$Builder;)V

    const/16 v4, 0x15

    aput-boolean v2, v0, v4

    .line 44
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .local v4, "newUri":Landroid/net/Uri;
    const/16 v5, 0x16

    aput-boolean v2, v0, v5

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rewriting request\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " [original]\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " [rewritten]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 47
    const-string v1, "newUri"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-object v4
.end method

.method public final shouldRewriteRequest(Landroid/webkit/WebResourceRequest;)Z
    .locals 5
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "request"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 51
    iget-object v1, p0, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->duckDuckGoUrlDetector:Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;->isDuckDuckGoUrl(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "request.url"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    const-string v3, "t"

    const-string v4, "tappv"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    :goto_0
    const/4 v1, 0x0

    const/16 v3, 0x1d

    aput-boolean v2, v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x1e

    aput-boolean v2, v0, v3

    return v1
.end method
