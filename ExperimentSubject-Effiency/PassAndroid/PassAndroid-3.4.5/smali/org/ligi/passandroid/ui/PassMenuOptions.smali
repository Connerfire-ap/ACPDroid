.class public final Lorg/ligi/passandroid/ui/PassMenuOptions;
.super Ljava/lang/Object;
.source "PassMenuOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassMenuOptions;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getPass",
        "()Lorg/ligi/passandroid/model/pass/Pass;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "setPassStore",
        "(Lorg/ligi/passandroid/model/PassStore;)V",
        "settings",
        "Lorg/ligi/passandroid/model/Settings;",
        "getSettings",
        "()Lorg/ligi/passandroid/model/Settings;",
        "setSettings",
        "(Lorg/ligi/passandroid/model/Settings;)V",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "getTracker",
        "()Lorg/ligi/passandroid/Tracker;",
        "setTracker",
        "(Lorg/ligi/passandroid/Tracker;)V",
        "process",
        "",
        "item",
        "Landroid/view/MenuItem;",
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
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pass:Lorg/ligi/passandroid/model/pass/Pass;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settings:Lorg/ligi/passandroid/model/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tracker:Lorg/ligi/passandroid/Tracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pass"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    .line 24
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 96
    new-instance v1, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 95
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 25
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 99
    new-instance v1, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 98
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/Tracker;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    .line 26
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 102
    new-instance v1, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$3;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassMenuOptions$$special$$inlined$instance$3;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 101
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/Settings;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->settings:Lorg/ligi/passandroid/model/Settings;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getPass()Lorg/ligi/passandroid/model/pass/Pass;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    return-object v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getSettings()Lorg/ligi/passandroid/model/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->settings:Lorg/ligi/passandroid/model/Settings;

    return-object v0
.end method

.method public final getTracker()Lorg/ligi/passandroid/Tracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    return-object v0
.end method

.method public final process(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const-string v3, "item"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 88
    :goto_0
    return v3

    .line 32
    :pswitch_1
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v6, "ui_action"

    const-string v7, "delete"

    const-string v8, "delete"

    invoke-interface {v3, v6, v7, v8, v9}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    const v6, 0x7f070035

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 36
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    const v6, 0x7f070036

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 37
    const v3, 0x7f020071

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 39
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f030022

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    .local v2, "sourceDeleteCheckBoxView":Landroid/view/View;
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v3, v6}, Lorg/ligi/passandroid/model/pass/Pass;->getSource(Lorg/ligi/passandroid/model/PassStore;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "file://"

    const/4 v6, 0x2

    invoke-static {v1, v3, v4, v6, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const-string v3, "sourceDeleteCheckBoxView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/ligi/passandroid/R$id;->sourceDeleteCheckbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const-string v4, "sourceDeleteCheckBoxView.sourceDeleteCheckbox"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    const v6, 0x7f070034

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 48
    :cond_0
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    const v4, 0x7f070033

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;

    invoke-direct {v4, p0, v2, v1}, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;-><init>(Lorg/ligi/passandroid/ui/PassMenuOptions;Landroid/view/View;Ljava/lang/String;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    const v3, 0x1040009

    invoke-virtual {v0, v3, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v3, v5

    .line 63
    goto/16 :goto_0

    .line 67
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "sourceDeleteCheckBoxView":Landroid/view/View;
    :pswitch_2
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lorg/ligi/passandroid/maps/PassbookMapsFacade;->startFullscreenMap(Landroid/content/Context;)V

    move v3, v5

    .line 68
    goto/16 :goto_0

    .line 72
    :pswitch_3
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v4, "ui_action"

    const-string v6, "share"

    const-string v7, "shared"

    invoke-interface {v3, v4, v6, v7, v9}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    new-instance v3, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iget-object v7, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-interface {v7}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;-><init>(Landroid/app/Activity;Ljava/io/File;)V

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->execute()V

    move v3, v5

    .line 74
    goto/16 :goto_0

    .line 78
    :pswitch_4
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v4, "ui_action"

    const-string v6, "share"

    const-string v7, "shared"

    invoke-interface {v3, v4, v6, v7, v9}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-interface {v3, v4}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 80
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    const-class v4, Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v3, v4}, Lorg/ligi/kaxt/ContextExtensionsKt;->startActivityFromClass(Landroid/content/Context;Ljava/lang/Class;)V

    move v3, v5

    .line 81
    goto/16 :goto_0

    .line 85
    :pswitch_5
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->activity:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-static {v3, v4}, Lorg/ligi/passandroid/printing/PrintHelperKt;->doPrint(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;)V

    move v3, v5

    .line 86
    goto/16 :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00ef
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setPassStore(Lorg/ligi/passandroid/model/PassStore;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-void
.end method

.method public final setSettings(Lorg/ligi/passandroid/model/Settings;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->settings:Lorg/ligi/passandroid/model/Settings;

    return-void
.end method

.method public final setTracker(Lorg/ligi/passandroid/Tracker;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/Tracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions;->tracker:Lorg/ligi/passandroid/Tracker;

    return-void
.end method
