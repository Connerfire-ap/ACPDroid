.class final Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TermsOfServiceRawStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;-><init>(Lcom/squareup/moshi/Moshi;Landroid/content/Context;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTermsOfServiceRawStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TermsOfServiceRawStore.kt\ncom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2\n*L\n1#1,60:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x54d6a99833dc5d2aL

    const/16 v2, 0xd

    const-string v3, "com/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->this$0:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    const/16 p1, 0xc

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->invoke()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final invoke()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->this$0:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->access$getContext$p(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "context.resources.openRawResource(R.raw.tosdr)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Reader;

    instance-of v1, v3, Ljava/io/BufferedReader;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v3, Ljava/io/BufferedReader;

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    const/4 v4, 0x3

    :try_start_0
    aput-boolean v2, v0, v4

    move-object v4, v3

    check-cast v4, Ljava/io/BufferedReader;

    .local v4, "it":Ljava/io/BufferedReader;
    const/4 v5, 0x4

    aput-boolean v2, v0, v5

    const/4 v5, 0x0

    move v6, v5

    .local v6, "$i$a$-use-TermsOfServiceRawStore$data$2$json$1":I
    move-object v7, v4

    check-cast v7, Ljava/io/Reader;

    invoke-static {v7}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-boolean v2, v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "it":Ljava/io/BufferedReader;
    .end local v6    # "$i$a$-use-TermsOfServiceRawStore$data$2$json$1":I
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    move-object v1, v7

    .line 42
    .local v1, "json":Ljava/lang/String;
    const-class v3, Ljava/util/List;

    check-cast v3, Ljava/lang/reflect/Type;

    new-array v4, v2, [Ljava/lang/reflect/Type;

    const-class v6, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    check-cast v6, Ljava/lang/reflect/Type;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/squareup/moshi/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    .local v3, "type":Ljava/lang/reflect/ParameterizedType;
    const/16 v4, 0x9

    aput-boolean v2, v0, v4

    .line 43
    iget-object v4, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore$data$2;->this$0:Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    invoke-static {v4}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;->access$getMoshi$p(Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;)Lcom/squareup/moshi/Moshi;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-virtual {v4, v5}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v4

    const-string v5, "moshi.adapter(type)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-boolean v2, v0, v5

    .line 44
    .local v4, "adapter":Lcom/squareup/moshi/JsonAdapter;
    invoke-virtual {v4, v1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .end local v1    # "json":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "adapter":Lcom/squareup/moshi/JsonAdapter;
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    return-object v5

    .line 41
    :catchall_0
    move-exception v1

    const/4 v4, 0x6

    :try_start_1
    aput-boolean v2, v0, v4

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    throw v4
.end method
