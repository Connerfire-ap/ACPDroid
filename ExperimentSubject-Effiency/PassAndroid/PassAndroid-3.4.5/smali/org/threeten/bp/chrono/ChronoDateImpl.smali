.class abstract Lorg/threeten/bp/chrono/ChronoDateImpl;
.super Lorg/threeten/bp/chrono/ChronoLocalDate;
.source "ChronoDateImpl.java"

# interfaces
.implements Lorg/threeten/bp/temporal/Temporal;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/ChronoDateImpl$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        ">",
        "Lorg/threeten/bp/chrono/ChronoLocalDate;",
        "Lorg/threeten/bp/temporal/Temporal;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoLocalDate;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    invoke-static {p0, p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->of(Lorg/threeten/bp/chrono/ChronoLocalDate;Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 5
    .param p1, "daysToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    goto :goto_0
.end method

.method minusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 5
    .param p1, "monthsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    goto :goto_0
.end method

.method minusWeeks(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 5
    .param p1, "weeksToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusWeeks(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusWeeks(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusWeeks(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    goto :goto_0
.end method

.method minusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 5
    .param p1, "yearsToSubtract"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/TemporalUnit;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    instance-of v1, p3, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 131
    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    .line 132
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoUnit;
    sget-object v1, Lorg/threeten/bp/chrono/ChronoDateImpl$1;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not valid for chronology "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    .line 145
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :goto_0
    return-object v1

    .line 134
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :pswitch_1
    const/4 v1, 0x7

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_4
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_5
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 139
    :pswitch_6
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v1

    goto :goto_0

    .line 145
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoUnit;
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/TemporalUnit;->addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/Chronology;->ensureChronoLocalDate(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/ChronoDateImpl;

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    return-object v0
.end method

.method abstract plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method abstract plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method plusWeeks(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 3
    .param p1, "weeksToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    return-object v0
.end method

.method abstract plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method public until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 4
    .param p1, "endExclusive"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 298
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;->getChronology()Lorg/threeten/bp/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/threeten/bp/chrono/Chronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    .line 299
    .local v0, "end":Lorg/threeten/bp/chrono/ChronoLocalDate;
    instance-of v1, p2, Lorg/threeten/bp/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 300
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v2

    .line 302
    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {p2, p0, v0}, Lorg/threeten/bp/temporal/TemporalUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 2
    .param p1, "endDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 307
    .local p0, "this":Lorg/threeten/bp/chrono/ChronoDateImpl;, "Lorg/threeten/bp/chrono/ChronoDateImpl<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported in ThreeTen backport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
