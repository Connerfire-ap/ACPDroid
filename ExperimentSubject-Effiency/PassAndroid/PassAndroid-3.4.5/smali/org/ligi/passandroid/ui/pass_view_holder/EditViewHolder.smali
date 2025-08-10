.class public final Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;
.super Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;
.source "EditViewHolder.kt"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0015J(\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J \u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0013H\u0016J\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;",
        "Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;",
        "Landroid/app/TimePickerDialog$OnTimeSetListener;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "view",
        "Landroid/support/v7/widget/CardView;",
        "(Landroid/support/v7/widget/CardView;)V",
        "pass",
        "Lorg/ligi/passandroid/model/pass/PassImpl;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "time",
        "Lorg/threeten/bp/ZonedDateTime;",
        "apply",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "activity",
        "Landroid/app/Activity;",
        "getVisibilityForGlobalAndLocal",
        "",
        "global",
        "",
        "local",
        "onDateSet",
        "Landroid/widget/DatePicker;",
        "year",
        "monthOfYear",
        "dayOfMonth",
        "onTimeSet",
        "Landroid/widget/TimePicker;",
        "hourOfDay",
        "minute",
        "setupButtons",
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
.field private pass:Lorg/ligi/passandroid/model/pass/PassImpl;

.field private passStore:Lorg/ligi/passandroid/model/PassStore;

.field private time:Lorg/threeten/bp/ZonedDateTime;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/CardView;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/CardView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;-><init>(Landroid/support/v7/widget/CardView;)V

    return-void
.end method

.method public static final synthetic access$getTime$p(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v0, :cond_0

    const-string v1, "time"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setTime$p(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;Lorg/threeten/bp/ZonedDateTime;)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;
    .param p1, "<set-?>"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 20
    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    return-void
.end method


# virtual methods
.method public apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V
    .locals 3
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "passStore"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/pass_view_holder/VerbosePassViewHolder;->apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V

    move-object v1, p1

    .line 29
    check-cast v1, Lorg/ligi/passandroid/model/pass/PassImpl;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    .line 30
    iput-object p2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 32
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    .line 33
    .local v0, "calendarTimespan":Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    .line 33
    :goto_0
    iput-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    .line 38
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lorg/threeten/bp/ZonedDateTime;->now()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    const-string v2, "ZonedDateTime.now()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getVisibilityForGlobalAndLocal(ZZ)I
    .locals 1
    .param p1, "global"    # Z
    .param p2, "local"    # Z

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v0, :cond_0

    const-string v1, "time"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZonedDateTime;->withYear(I)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->withMonth(I)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/threeten/bp/ZonedDateTime;->withDayOfMonth(I)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-string v1, "time.withYear(year).with\u2026ithDayOfMonth(dayOfMonth)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    .line 64
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    if-nez v0, :cond_1

    const-string v1, "pass"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v2, :cond_2

    const-string v3, "time"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v1, v2, v4, v4}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;)V

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    .line 66
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v3, :cond_3

    const-string v4, "time"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lorg/threeten/bp/ZonedDateTime;->getHour()I

    move-result v3

    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v4, :cond_4

    const-string v5, "time"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lorg/threeten/bp/ZonedDateTime;->getMinute()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 67
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v0, :cond_0

    const-string v1, "time"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/threeten/bp/ZonedDateTime;->withHour(I)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/threeten/bp/ZonedDateTime;->withMinute(I)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    const-string v1, "time.withHour(hourOfDay).withMinute(minute)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    .line 74
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    if-nez v0, :cond_1

    const-string v1, "pass"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->time:Lorg/threeten/bp/ZonedDateTime;

    if-nez v2, :cond_2

    const-string v3, "time"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v1, v2, v4, v4}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;)V

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    .line 76
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->pass:Lorg/ligi/passandroid/model/pass/PassImpl;

    if-nez v0, :cond_3

    const-string v1, "pass"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->passStore:Lorg/ligi/passandroid/model/PassStore;

    if-nez v1, :cond_4

    const-string v2, "passStore"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->refresh(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;)V

    .line 77
    return-void
.end method

.method public setupButtons(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
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
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v1, "view.timeAndNavBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/ligi/passandroid/R$id;->timeButton:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.timeAndNavBar.timeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v1, "view.timeAndNavBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/ligi/passandroid/R$id;->locationButton:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.timeAndNavBar.locationButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v1, "view.timeAndNavBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/ligi/passandroid/R$id;->timeButton:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$1;-><init>(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v1, "view.timeAndNavBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/ligi/passandroid/R$id;->locationButton:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$2;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$2;-><init>(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
