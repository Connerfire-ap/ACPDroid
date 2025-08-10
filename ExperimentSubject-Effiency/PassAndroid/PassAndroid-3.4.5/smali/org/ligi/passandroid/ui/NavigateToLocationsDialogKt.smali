.class public final Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;
.super Ljava/lang/Object;
.source "NavigateToLocationsDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a \u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a \u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a\u001a\u0010\u000e\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u000f"
    }
    d2 = {
        "done",
        "",
        "activity",
        "Landroid/app/Activity;",
        "finishOnDone",
        "",
        "getEncodedDescription",
        "",
        "kotlin.jvm.PlatformType",
        "location",
        "Lorg/ligi/passandroid/model/pass/PassLocation;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "startIntentForLocation",
        "showNavigateToLocationsDialog",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final synthetic access$done(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "finishOnDone"    # Z

    .prologue
    .line 1
    invoke-static {p0, p1}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->done(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static final synthetic access$startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "location"    # Lorg/ligi/passandroid/model/pass/PassLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V

    return-void
.end method

.method private static final done(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "finishOnDone"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 44
    :cond_0
    return-void
.end method

.method private static final getEncodedDescription(Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;
    .locals 3
    .param p0, "location"    # Lorg/ligi/passandroid/model/pass/PassLocation;
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    .line 63
    nop

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/pass/PassLocation;->getNameWithFallback(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static final showNavigateToLocationsDialog(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;Z)V
    .locals 7
    .param p0, "$receiver"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "finishOnDone"    # Z

    .prologue
    const/4 v6, 0x1

    const-string v5, "$receiver"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pass"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v4

    .line 18
    .local v4, "locations":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    invoke-static {p0, p2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->done(Landroid/app/Activity;Z)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 21
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ligi/passandroid/model/pass/PassLocation;

    invoke-static {p0, v5, p1}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 22
    invoke-static {p0, p2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->done(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 23
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 26
    .local v3, "locationDescriptions":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 27
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ligi/passandroid/model/pass/PassLocation;

    .line 28
    .local v2, "loc":Lorg/ligi/passandroid/model/pass/PassLocation;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2, p1}, Lorg/ligi/passandroid/model/pass/PassLocation;->getNameWithFallback(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    move v0, v1

    .line 27
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 30
    .end local v2    # "loc":Lorg/ligi/passandroid/model/pass/PassLocation;
    :cond_3
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v6, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070032

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 31
    check-cast v3, [Ljava/lang/CharSequence;

    .end local v3    # "locationDescriptions":[Ljava/lang/String;
    new-instance v5, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;

    invoke-direct {v5, p0, v4, p1, p2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;-><init>(Landroid/app/Activity;Ljava/util/List;Lorg/ligi/passandroid/model/pass/Pass;Z)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private static final startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "location"    # Lorg/ligi/passandroid/model/pass/PassLocation;
    .param p2, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    .line 47
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "i":Landroid/content/Intent;
    invoke-static {p1, p2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->getEncodedDescription(Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassLocation;->getCommaSeparated()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "latAndLonStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    nop

    .line 54
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://maps.google.com/?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
