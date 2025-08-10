.class public Lorg/openobservatory/ooniprobe/fragment/ResultFragment;
.super Landroid/support/v4/app/Fragment;
.source "ResultFragment.java"


# instance fields
.field private mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

.field private mPbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mPbar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 31
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    nop

    .line 36
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement onViewSelected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 46
    const v0, 0x7f0b0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 53
    const v0, 0x7f0a0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->setHasOptionsMenu(Z)V

    .line 56
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    .local v2, "position":I
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "json_file"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "jsonFilename":Ljava/lang/String;
    const v4, 0x7f0800fe

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mPbar:Landroid/widget/ProgressBar;

    .line 59
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    invoke-virtual {v5}, Lorg/openobservatory/ooniprobe/activity/ResultActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v4, "jsonFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;

    invoke-direct {v5, v4}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;-><init>(Ljava/io/File;)V

    .line 62
    .local v5, "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    invoke-virtual {v5, v2}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;->getLineN(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "jsonLine":Ljava/lang/String;
    const v7, 0x7f0800ff

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 64
    .local v7, "wv":Landroid/webkit/WebView;
    new-instance v8, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;

    iget-object v9, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mPbar:Landroid/widget/ProgressBar;

    invoke-direct {v8, v9}, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;-><init>(Landroid/widget/ProgressBar;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    new-instance v1, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;-><init>(Ljava/lang/String;)V

    const-string v8, "userLocale"

    invoke-virtual {v7, v1, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;

    invoke-direct {v1, v6}, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;-><init>(Ljava/lang/String;)V

    const-string v8, "MeasurementJSON"

    invoke-virtual {v7, v1, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v1, "file:///android_asset/webui/index.html"

    invoke-virtual {v7, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "jsonl":Lorg/openobservatory/ooniprobe/utils/JSONUtils$JSONL;
    .end local v6    # "jsonLine":Ljava/lang/String;
    .end local v7    # "wv":Landroid/webkit/WebView;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 74
    :goto_0
    nop

    .line 75
    :goto_1
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openobservatory/ooniprobe/fragment/ResultFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/ResultActivity;

    .line 42
    return-void
.end method
