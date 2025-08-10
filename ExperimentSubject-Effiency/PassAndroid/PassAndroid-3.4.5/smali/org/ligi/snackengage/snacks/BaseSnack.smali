.class public abstract Lorg/ligi/snackengage/snacks/BaseSnack;
.super Ljava/lang/Object;
.source "BaseSnack.java"

# interfaces
.implements Lorg/ligi/snackengage/snacks/Snack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/snackengage/snacks/BaseSnack$SnackDuration;
    }
.end annotation


# static fields
.field public static final DURATION_INDEFINITE:I = -0x2

.field public static final DURATION_LONG:I = 0x0

.field public static final DURATION_SHORT:I = -0x1


# instance fields
.field private actionColor:Ljava/lang/Integer;

.field private actionText:Ljava/lang/String;

.field private backgroundColor:Ljava/lang/Integer;

.field protected conditionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/snackengage/conditions/SnackCondition;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I

.field protected snackContext:Lorg/ligi/snackengage/SnackContext;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->conditionList:Ljava/util/List;

    .line 25
    const/4 v0, -0x2

    iput v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->duration:I

    .line 30
    iput-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionColor:Ljava/lang/Integer;

    .line 31
    iput-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected createSnackBar(Lorg/ligi/snackengage/SnackContext;)Landroid/support/design/widget/Snackbar;
    .locals 5
    .param p1, "snackContext"    # Lorg/ligi/snackengage/SnackContext;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->titleText:Ljava/lang/String;

    iget v4, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->duration:I

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 56
    .local v1, "snackbar":Landroid/support/design/widget/Snackbar;
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionColor:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    .line 59
    :cond_0
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->backgroundColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "snackBarView":Landroid/view/View;
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    .end local v0    # "snackBarView":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionText:Ljava/lang/String;

    new-instance v3, Lorg/ligi/snackengage/snacks/BaseSnack$1;

    invoke-direct {v3, p0}, Lorg/ligi/snackengage/snacks/BaseSnack$1;-><init>(Lorg/ligi/snackengage/snacks/BaseSnack;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    return-object v2
.end method

.method public engage()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v0}, Lorg/ligi/snackengage/SnackContext;->getStats()Lorg/ligi/snackengage/stats/SnackStats;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/ligi/snackengage/stats/SnackStats;->registerSnackClick(Lorg/ligi/snackengage/snacks/Snack;)V

    .line 82
    return-void
.end method

.method public abstract getActionText()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v0}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public opportunity(Lorg/ligi/snackengage/SnackContext;)Z
    .locals 3
    .param p1, "snackContext"    # Lorg/ligi/snackengage/SnackContext;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    .line 37
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->conditionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/snackengage/conditions/SnackCondition;

    .line 38
    .local v0, "snackCondition":Lorg/ligi/snackengage/conditions/SnackCondition;
    invoke-interface {v0, p1, p0}, Lorg/ligi/snackengage/conditions/SnackCondition;->isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 49
    .end local v0    # "snackCondition":Lorg/ligi/snackengage/conditions/SnackCondition;
    :goto_0
    return v1

    .line 43
    :cond_1
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getStats()Lorg/ligi/snackengage/stats/SnackStats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/ligi/snackengage/stats/SnackStats;->registerSnackShow(Lorg/ligi/snackengage/snacks/Snack;)V

    .line 45
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionText:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;->getActionText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionText:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->titleText:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->titleText:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lorg/ligi/snackengage/snacks/BaseSnack;->createSnackBar(Lorg/ligi/snackengage/SnackContext;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 49
    const/4 v1, 0x1

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionText:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_3
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->titleText:Ljava/lang/String;

    goto :goto_2
.end method

.method public overrideActionText(Ljava/lang/String;)Lorg/ligi/snackengage/snacks/BaseSnack;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionText:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public overrideTitleText(Ljava/lang/String;)Lorg/ligi/snackengage/snacks/BaseSnack;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->titleText:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setActionColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->actionColor:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->backgroundColor:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method public uniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs withConditions([Lorg/ligi/snackengage/conditions/SnackCondition;)Lorg/ligi/snackengage/snacks/BaseSnack;
    .locals 1
    .param p1, "conditions"    # [Lorg/ligi/snackengage/conditions/SnackCondition;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->conditionList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public withDuration(I)Lorg/ligi/snackengage/snacks/BaseSnack;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/ligi/snackengage/snacks/BaseSnack;->duration:I

    .line 94
    return-object p0
.end method
