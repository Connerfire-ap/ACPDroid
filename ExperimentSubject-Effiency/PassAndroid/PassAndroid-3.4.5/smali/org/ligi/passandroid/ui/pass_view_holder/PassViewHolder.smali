.class public abstract Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PassViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0006\u0010\t\u001a\u00020\nH\u0004J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0015J\u0018\u0010\u001c\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0004J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0018\u0010!\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\""
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/support/v7/widget/CardView;",
        "(Landroid/support/v7/widget/CardView;)V",
        "getView",
        "()Landroid/support/v7/widget/CardView;",
        "apply",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "activity",
        "Landroid/app/Activity;",
        "getDateOrExtraText",
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
        "getExtraString",
        "",
        "getExtraStringForField",
        "passField",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "getTimeInfoString",
        "getVisibilityForGlobalAndLocal",
        "",
        "global",
        "",
        "local",
        "refresh",
        "setDateTextFromDateAndPrefix",
        "prefix",
        "relevantDate",
        "Lorg/threeten/bp/ZonedDateTime;",
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
.field private final view:Landroid/support/v7/widget/CardView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    move-object v0, p1

    .line 20
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    return-void
.end method

.method public static final synthetic access$getDateOrExtraText(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getDateOrExtraText(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    return-object v0
.end method

.method private final getDateOrExtraText(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    .locals 2
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 106
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getExtraStringForField(Lorg/ligi/passandroid/model/pass/PassField;)Ljava/lang/String;
    .locals 3
    .param p1, "passField"    # Lorg/ligi/passandroid/model/pass/PassField;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p1}, Lorg/ligi/passandroid/model/pass/PassField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stringBuilder.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final setDateTextFromDateAndPrefix(Ljava/lang/String;Lorg/threeten/bp/ZonedDateTime;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "relevantDate"    # Lorg/threeten/bp/ZonedDateTime;

    .prologue
    .line 84
    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Lorg/threeten/bp/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 86
    const-wide/32 v4, 0xea60

    .line 87
    const-wide/32 v6, 0x240c8400

    .line 88
    const/4 v8, 0x0

    .line 84
    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "relativeDateTimeString":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V
    .locals 1
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
    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p3, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->setupButtons(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->refresh(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;)V

    .line 26
    return-void
.end method

.method public final getExtraString(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;
    .locals 2
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassField;

    if-eqz v0, :cond_0

    .local v0, "it":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-direct {p0, v0}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getExtraStringForField(Lorg/ligi/passandroid/model/pass/PassField;)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "it":Lorg/ligi/passandroid/model/pass/PassField;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getTimeInfoString(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;
    .locals 4
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v1, v2}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->setDateTextFromDateAndPrefix(Ljava/lang/String;Lorg/threeten/bp/ZonedDateTime;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 96
    :cond_3
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_2
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_a

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 97
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 98
    .local v0, "to":Lorg/threeten/bp/ZonedDateTime;
    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-static {}, Lorg/threeten/bp/ZonedDateTime;->now()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->isAfter(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "expires "

    :goto_4
    invoke-direct {p0, v1, v0}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->setDateTextFromDateAndPrefix(Ljava/lang/String;Lorg/threeten/bp/ZonedDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 96
    .end local v0    # "to":Lorg/threeten/bp/ZonedDateTime;
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_3

    .line 98
    .restart local v0    # "to":Lorg/threeten/bp/ZonedDateTime;
    :cond_9
    const-string v1, " expired "

    goto :goto_4

    .end local v0    # "to":Lorg/threeten/bp/ZonedDateTime;
    :cond_a
    move-object v1, v2

    .line 100
    goto :goto_1
.end method

.method public final getView()Landroid/support/v7/widget/CardView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    return-object v0
.end method

.method protected getVisibilityForGlobalAndLocal(ZZ)I
    .locals 1
    .param p1, "global"    # Z
    .param p2, "local"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    .line 112
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected final refresh(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;)V
    .locals 8
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "pass"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "passStore"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getDateOrExtraText(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    .line 44
    .local v0, "dateOrExtraText":Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    .line 46
    .local v3, "noButtons":Z
    :goto_0
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->actionsSeparator:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.actionsSeparator"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v6}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getVisibilityForGlobalAndLocal(ZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v5, "view.timeAndNavBar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/ligi/passandroid/R$id;->locationButton:I

    invoke-virtual {v4, v5}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "view.timeAndNavBar.locationButton"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getLocations()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {p0, v3, v5}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getVisibilityForGlobalAndLocal(ZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v5, "view.timeAndNavBar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/ligi/passandroid/R$id;->timeButton:I

    invoke-virtual {v4, v5}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "view.timeAndNavBar.timeButton"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p0, v3, v6}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getVisibilityForGlobalAndLocal(ZZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    const-string v4, "icon"

    invoke-interface {p1, p2, v4}, Lorg/ligi/passandroid/model/pass/Pass;->getBitmap(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    .local v1, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "it":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->categoryView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;

    invoke-virtual {v4, v2}, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 55
    .end local v2    # "it":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->categoryView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getType()Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;->setImageByCategory(Lorg/ligi/passandroid/model/pass/PassType;)V

    .line 57
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->categoryView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getAccentColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/ligi/passandroid/ui/views/CategoryIndicatorViewWithIcon;->setAccentColor(I)V

    .line 59
    iget-object v4, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    check-cast v4, Landroid/view/View;

    sget v5, Lorg/ligi/passandroid/R$id;->passTitle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "view.passTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .end local v1    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "noButtons":Z
    :cond_1
    move v3, v7

    .line 44
    goto/16 :goto_0

    .restart local v3    # "noButtons":Z
    :cond_2
    move v5, v7

    .line 47
    goto/16 :goto_1

    :cond_3
    move v6, v7

    .line 49
    goto :goto_2
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

    .line 29
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

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

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

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

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

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

    new-instance v1, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;

    invoke-direct {v1, p0, p2}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;-><init>(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;Lorg/ligi/passandroid/model/pass/Pass;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->view:Landroid/support/v7/widget/CardView;

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

    new-instance v1, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;

    invoke-direct {v1, p1, p2}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;-><init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
