.class public final Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateAsync"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;",
        "Ljava/lang/Runnable;",
        "(Lorg/ligi/passandroid/ui/PassViewActivityBase;)V",
        "dlg",
        "Landroid/app/ProgressDialog;",
        "run",
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
.field private dlg:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivityBase;)V
    .locals 0
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/PassViewActivityBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->dlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    const-string v1, "dlg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;
    .param p1, "<set-?>"    # Landroid/app/ProgressDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->dlg:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    .line 176
    .local v10, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    new-instance v3, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;-><init>(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v4, v3}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 184
    .local v8, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Lorg/ligi/passandroid/model/pass/Pass;->getWebServiceURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/v1/passes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Lorg/ligi/passandroid/model/pass/Pass;->getPassIdent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Lorg/ligi/passandroid/model/pass/Pass;->getSerial()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "url":Ljava/lang/String;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    .line 186
    .local v12, "requestBuilder":Lokhttp3/Request$Builder;
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApplePass "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10}, Lorg/ligi/passandroid/model/pass/Pass;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 188
    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v11

    .line 190
    .local v11, "request":Lokhttp3/Request;
    nop

    .line 192
    :try_start_0
    invoke-virtual {v8, v11}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v13

    const-string v3, "client.newCall(request).execute()"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .local v13, "response":Lokhttp3/Response;
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    .line 194
    .local v7, "body":Lokhttp3/ResponseBody;
    if-eqz v7, :cond_3

    .line 195
    new-instance v2, Lorg/ligi/passandroid/model/InputStreamWithSource;

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "body.byteStream()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v14, v3}, Lorg/ligi/passandroid/model/InputStreamWithSource;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 196
    .local v2, "inputStreamWithSource":Lorg/ligi/passandroid/model/InputStreamWithSource;
    new-instance v1, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    check-cast v3, Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v4}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v4

    .line 197
    new-instance v6, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->dlg:Landroid/app/ProgressDialog;

    if-nez v5, :cond_1

    const-string v16, "dlg"

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v5, Landroid/app/Dialog;

    invoke-direct {v6, v15, v5}, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipSuccessCallback;-><init>(Lorg/ligi/passandroid/ui/PassViewActivityBase;Landroid/app/Dialog;)V

    move-object v0, v6

    check-cast v0, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-object v5, v0

    .line 198
    new-instance v15, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->dlg:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    const-string v17, "dlg"

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v6, Landroid/app/Dialog;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v6}, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;-><init>(Lorg/ligi/passandroid/ui/PassViewActivityBase;Landroid/app/Dialog;)V

    move-object v0, v15

    check-cast v0, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-object v6, v0

    .line 196
    invoke-direct/range {v1 .. v6}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;-><init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    .line 199
    .local v1, "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->setOverwrite(Z)V

    .line 200
    sget-object v3, Lorg/ligi/passandroid/ui/UnzipPassController;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;

    invoke-virtual {v3, v1}, Lorg/ligi/passandroid/ui/UnzipPassController;->processInputStream(Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1    # "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    .end local v2    # "inputStreamWithSource":Lorg/ligi/passandroid/model/InputStreamWithSource;
    .end local v7    # "body":Lokhttp3/ResponseBody;
    .end local v13    # "response":Lokhttp3/Response;
    :cond_3
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v9

    .line 203
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
