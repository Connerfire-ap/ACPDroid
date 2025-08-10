.class public final Lorg/ligi/passandroid/functions/InputStreamProviderKt;
.super Ljava/lang/Object;
.source "InputStreamProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002\u001a\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002\u001a\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u001a\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000e"
    }
    d2 = {
        "IPHONE_USER_AGENT",
        "",
        "getIPHONE_USER_AGENT",
        "()Ljava/lang/String;",
        "fromContent",
        "Lorg/ligi/passandroid/model/InputStreamWithSource;",
        "ctx",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "fromOKHttp",
        "fromURI",
        "context",
        "getDefaultInputStreamForUri",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final IPHONE_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53"

    sput-object v0, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->IPHONE_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method private static final fromContent(Landroid/content/Context;Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    new-instance v0, Lorg/ligi/passandroid/model/InputStreamWithSource;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "ctx.contentResolver.openInputStream(uri)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ligi/passandroid/model/InputStreamWithSource;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static final fromOKHttp(Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 32
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 33
    .local v1, "client":Lokhttp3/OkHttpClient;
    new-instance v7, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    .local v7, "url":Ljava/net/URL;
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, v7}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 38
    .local v5, "requestBuilder":Lokhttp3/Request$Builder;
    const/4 v9, 0x7

    new-array v9, v9, [Lkotlin/Pair;

    .line 39
    const/4 v10, 0x0

    const-string v11, "air_canada"

    const-string v12, "//m.aircanada.ca/ebp/"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 40
    const/4 v10, 0x1

    const-string v11, "air_canada2"

    const-string v12, "//services.aircanada.com/ebp/"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 41
    const/4 v10, 0x2

    const-string v11, "air_canada3"

    const-string v12, "//mci.aircanada.com/mci/bp/"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 42
    const/4 v10, 0x3

    const-string v11, "icelandair"

    const-string v12, "//checkin.si.amadeus.net"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 43
    const/4 v10, 0x4

    const-string v11, "mbk"

    const-string v12, "//mbk.thy.com/"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 44
    const/4 v10, 0x5

    const-string v11, "heathrow"

    const-string v12, "//passbook.heathrow.com/"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 45
    const/4 v10, 0x6

    const-string v11, "eventbrite"

    const-string v12, "//www.eventbrite.com/passes/order"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    aput-object v11, v9, v10

    .line 38
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 48
    .local v2, "iPhoneFakeMap":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 49
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "uri.toString()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    check-cast v8, Ljava/lang/CharSequence;

    .end local v8    # "value":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v9, v8, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    sget-object v9, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v9}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v9

    const-string v11, "quirk_fix"

    const-string v12, "ua_fake"

    const/4 v13, 0x0

    invoke-interface {v9, v11, v12, v3, v13}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string v9, "User-Agent"

    sget-object v11, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->IPHONE_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v5, v9, v11}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 55
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 57
    .local v4, "request":Lokhttp3/Request;
    invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 59
    .local v6, "response":Lokhttp3/Response;
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 61
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_2

    .line 62
    new-instance v9, Lorg/ligi/passandroid/model/InputStreamWithSource;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "uri.toString()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "body.byteStream()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10, v11}, Lorg/ligi/passandroid/model/InputStreamWithSource;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 65
    :goto_1
    return-object v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static final fromURI(Landroid/content/Context;Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v0

    const-string v1, "protocol"

    const-string v2, "to_inputstream"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    :goto_0
    sget-object v0, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v0}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown scheme in ImportAsyncTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 26
    invoke-static {p1}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->getDefaultInputStreamForUri(Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v0

    .line 21
    :goto_1
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->getDefaultInputStreamForUri(Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v0

    goto :goto_1

    .line 16
    :sswitch_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    :goto_2
    invoke-static {p1}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->fromOKHttp(Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v0

    goto :goto_1

    .line 16
    :sswitch_2
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :sswitch_3
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->fromContent(Landroid/content/Context;Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v0

    goto :goto_1

    .line 16
    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_0
        0x310888 -> :sswitch_1
        0x5f008eb -> :sswitch_2
        0x38b73479 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getDefaultInputStreamForUri(Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 70
    new-instance v1, Lorg/ligi/passandroid/model/InputStreamWithSource;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "uri.toString()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Lorg/ligi/passandroid/model/InputStreamWithSource;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static final getIPHONE_USER_AGENT()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->IPHONE_USER_AGENT:Ljava/lang/String;

    return-object v0
.end method
