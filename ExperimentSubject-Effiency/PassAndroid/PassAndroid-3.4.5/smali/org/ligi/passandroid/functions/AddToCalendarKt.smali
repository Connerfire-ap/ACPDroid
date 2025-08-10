.class public final Lorg/ligi/passandroid/functions/AddToCalendarKt;
.super Ljava/lang/Object;
.source "AddToCalendar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007\u001a \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tH\u0002\u001a\u001e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\t\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "DEFAULT_EVENT_LENGTH_IN_HOURS",
        "",
        "getDEFAULT_EVENT_LENGTH_IN_HOURS",
        "()J",
        "createIntent",
        "Landroid/content/Intent;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "timeSpan",
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
        "reallyAddToCalendar",
        "",
        "contextView",
        "Landroid/view/View;",
        "tryAddDateToCalendar",
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
.field private static final DEFAULT_EVENT_LENGTH_IN_HOURS:J = 0x8L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x8

    sput-wide v0, Lorg/ligi/passandroid/functions/AddToCalendarKt;->DEFAULT_EVENT_LENGTH_IN_HOURS:J

    return-void
.end method

.method public static final synthetic access$reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    .locals 0
    .param p0, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "contextView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lorg/ligi/passandroid/functions/AddToCalendarKt;->reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    return-void
.end method

.method public static final createIntent(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)Landroid/content/Intent;
    .locals 10
    .param p0, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "timeSpan"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const-string v4, "pass"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "timeSpan"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "$receiver":Landroid/content/Intent;
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v4

    if-nez v4, :cond_0

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "span must have either a to or a from"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 45
    :cond_0
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    .local v1, "from":Lorg/threeten/bp/ZonedDateTime;
    :goto_0
    const-string v4, "beginTime"

    invoke-virtual {v1}, Lorg/threeten/bp/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    int-to-long v8, v5

    mul-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 50
    .local v3, "to":Lorg/threeten/bp/ZonedDateTime;
    :goto_1
    const-string v4, "endTime"

    invoke-virtual {v3}, Lorg/threeten/bp/ZonedDateTime;->toEpochSecond()J

    move-result-wide v6

    int-to-long v8, v5

    mul-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    const-string v4, "title"

    invoke-interface {p0}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-interface {p0}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/model/pass/PassLocation;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/pass/PassLocation;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 55
    .local v2, "it":Ljava/lang/String;
    const-string v4, "eventLocation"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .end local v2    # "it":Ljava/lang/String;
    :cond_1
    nop

    nop

    return-object v0

    .line 46
    .end local v1    # "from":Lorg/threeten/bp/ZonedDateTime;
    .end local v3    # "to":Lorg/threeten/bp/ZonedDateTime;
    :cond_2
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-wide v6, Lorg/ligi/passandroid/functions/AddToCalendarKt;->DEFAULT_EVENT_LENGTH_IN_HOURS:J

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/ZonedDateTime;->minusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 49
    .restart local v1    # "from":Lorg/threeten/bp/ZonedDateTime;
    :cond_4
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    sget-wide v6, Lorg/ligi/passandroid/functions/AddToCalendarKt;->DEFAULT_EVENT_LENGTH_IN_HOURS:J

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/ZonedDateTime;->plusHours(J)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v3

    goto :goto_1
.end method

.method public static final getDEFAULT_EVENT_LENGTH_IN_HOURS()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lorg/ligi/passandroid/functions/AddToCalendarKt;->DEFAULT_EVENT_LENGTH_IN_HOURS:J

    return-wide v0
.end method

.method private static final reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    .locals 4
    .param p0, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
    .param p1, "contextView"    # Landroid/view/View;
    .param p2, "timeSpan"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    .prologue
    .line 28
    nop

    .line 30
    :try_start_0
    invoke-static {p0, p2}, Lorg/ligi/passandroid/functions/AddToCalendarKt;->createIntent(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)Landroid/content/Intent;

    move-result-object v1

    .line 31
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f070084

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method public static final tryAddDateToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    .locals 3
    .param p0, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "contextView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "pass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeSpan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 19
    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 20
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 21
    const v2, 0x104000a

    new-instance v0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;-><init>(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ligi/passandroid/functions/AddToCalendarKt;->reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    goto :goto_0
.end method
