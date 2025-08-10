.class final Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;
.super Landroid/os/AsyncTask;
.source "ExtractURLAsIphoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadExtractAndStartImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J#\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0007\"\u00020\u0002H\u0014\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;",
        "Landroid/os/AsyncTask;",
        "Ljava/lang/Void;",
        "",
        "(Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;)V",
        "doInBackground",
        "params",
        "",
        "([Ljava/lang/Void;)Ljava/lang/String;",
        "extractURL",
        "body",
        "onPostExecute",
        "",
        "s",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;)V
    .locals 0
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final extractURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "href=\"(.*\\.pkpass.*?)\""

    aput-object v6, v4, v5

    const-string v6, "window.location = \'(.*\\.pkpass.*?)\'"

    aput-object v6, v4, v9

    .line 66
    .local v4, "patterns":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .end local v4    # "patterns":[Ljava/lang/String;
    nop

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move v6, v5

    .line 99
    :goto_0
    array-length v5, v4

    if-ge v6, v5, :cond_0

    aget-object v3, v4, v6

    .line 100
    .local v3, "item$iv$iv":Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;

    .line 67
    .end local v3    # "item$iv$iv":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 101
    :cond_0
    check-cast v0, Ljava/util/List;

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    nop

    .line 102
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/regex/Matcher;

    .line 68
    .local v2, "it":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v1

    .line 103
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Ljava/util/regex/Matcher;
    :goto_1
    check-cast v5, Ljava/util/regex/Matcher;

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    return-object v7

    :cond_3
    move-object v5, v7

    .line 103
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const-string v7, "params"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 36
    .local v2, "client":Lokhttp3/OkHttpClient;
    nop

    .line 37
    :try_start_0
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v9}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "intent"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 38
    .local v4, "requestBuilder":Lokhttp3/Request$Builder;
    const-string v7, "User-Agent"

    invoke-static {}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->getIPHONE_USER_AGENT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 40
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v2, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 42
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "bodyString":Ljava/lang/String;
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 46
    const-string v7, "bodyString"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->extractURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 48
    .local v5, "url":Ljava/lang/String;
    const-string v7, "http"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v5, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v8}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "intent"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "intent.data"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v8}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "intent"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "intent.data"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 58
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "bodyString":Ljava/lang/String;
    .end local v4    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .restart local v0    # "body":Lokhttp3/ResponseBody;
    .restart local v1    # "bodyString":Ljava/lang/String;
    .restart local v4    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_1
    move-object v5, v6

    .line 46
    goto :goto_0

    .line 54
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "bodyString":Ljava/lang/String;
    .end local v4    # "requestBuilder":Lokhttp3/Request$Builder;
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Ljava/io/IOException;
    iget-object v7, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v7}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v7

    const-string v8, "ExtractURLAsIphoneActivity"

    check-cast v3, Ljava/lang/Throwable;

    .end local v3    # "e":Ljava/io/IOException;
    invoke-interface {v7, v8, v3, v11}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_1
    move-object v5, v6

    .line 58
    goto :goto_0

    .line 56
    :catch_1
    move-exception v3

    .line 57
    .local v3, "e":Ljava/net/URISyntaxException;
    iget-object v7, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v7}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v7

    const-string v8, "ExtractURLAsIphoneActivity"

    check-cast v3, Ljava/lang/Throwable;

    .end local v3    # "e":Ljava/net/URISyntaxException;
    invoke-interface {v7, v8, v3, v11}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "getIntent()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->tearDown()V

    .line 89
    :goto_0
    return-void

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v1

    const-string v2, "quirk_fix"

    const-string v3, "unpack_success"

    iget-object v4, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v4}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "intent"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "intent.data"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->this$0:Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->tearDown()V

    goto :goto_0
.end method
