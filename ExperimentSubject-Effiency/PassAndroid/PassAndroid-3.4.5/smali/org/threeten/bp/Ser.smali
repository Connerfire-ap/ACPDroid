.class final Lorg/threeten/bp/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x4t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x5t

.field static final MONTH_DAY_TYPE:B = 0x40t

.field static final OFFSET_DATE_TIME_TYPE:B = 0x45t

.field static final OFFSET_TIME_TYPE:B = 0x42t

.field static final YEAR_MONTH_TYPE:B = 0x44t

.field static final YEAR_TYPE:B = 0x43t

.field static final ZONED_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-byte p1, p0, Lorg/threeten/bp/Ser;->type:B

    .line 106
    iput-object p2, p0, Lorg/threeten/bp/Ser;->object:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 179
    .local v0, "type":B
    invoke-static {v0, p0}, Lorg/threeten/bp/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    sparse-switch p0, :sswitch_data_0

    .line 198
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :sswitch_0
    invoke-static {p1}, Lorg/threeten/bp/Duration;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 185
    :sswitch_1
    invoke-static {p1}, Lorg/threeten/bp/Instant;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Instant;

    move-result-object v0

    goto :goto_0

    .line 186
    :sswitch_2
    invoke-static {p1}, Lorg/threeten/bp/LocalDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 187
    :sswitch_3
    invoke-static {p1}, Lorg/threeten/bp/LocalDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 188
    :sswitch_4
    invoke-static {p1}, Lorg/threeten/bp/LocalTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 189
    :sswitch_5
    invoke-static {p1}, Lorg/threeten/bp/MonthDay;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    goto :goto_0

    .line 190
    :sswitch_6
    invoke-static {p1}, Lorg/threeten/bp/OffsetDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    .line 191
    :sswitch_7
    invoke-static {p1}, Lorg/threeten/bp/OffsetTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/OffsetTime;

    move-result-object v0

    goto :goto_0

    .line 192
    :sswitch_8
    invoke-static {p1}, Lorg/threeten/bp/Year;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/Year;

    move-result-object v0

    goto :goto_0

    .line 193
    :sswitch_9
    invoke-static {p1}, Lorg/threeten/bp/YearMonth;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/YearMonth;

    move-result-object v0

    goto :goto_0

    .line 194
    :sswitch_a
    invoke-static {p1}, Lorg/threeten/bp/ZonedDateTime;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 195
    :sswitch_b
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    goto :goto_0

    .line 196
    :sswitch_c
    invoke-static {p1}, Lorg/threeten/bp/ZoneRegion;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneId;

    move-result-object v0

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0x40 -> :sswitch_5
        0x42 -> :sswitch_7
        0x43 -> :sswitch_8
        0x44 -> :sswitch_9
        0x45 -> :sswitch_6
    .end sparse-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/threeten/bp/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 121
    sparse-switch p0, :sswitch_data_0

    .line 162
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_0
    check-cast p1, Lorg/threeten/bp/Duration;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/Duration;->writeExternal(Ljava/io/DataOutput;)V

    .line 164
    :goto_0
    return-void

    .line 126
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_1
    check-cast p1, Lorg/threeten/bp/Instant;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/Instant;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 129
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_2
    check-cast p1, Lorg/threeten/bp/LocalDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 132
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_3
    check-cast p1, Lorg/threeten/bp/LocalDateTime;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 135
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_4
    check-cast p1, Lorg/threeten/bp/LocalTime;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 138
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_5
    check-cast p1, Lorg/threeten/bp/MonthDay;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 141
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_6
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/OffsetDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 144
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_7
    check-cast p1, Lorg/threeten/bp/OffsetTime;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/OffsetTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 147
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_8
    check-cast p1, Lorg/threeten/bp/YearMonth;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 150
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_9
    check-cast p1, Lorg/threeten/bp/Year;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/Year;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 153
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_a
    check-cast p1, Lorg/threeten/bp/ZoneRegion;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 156
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_b
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 159
    .restart local p1    # "object":Ljava/lang/Object;
    :sswitch_c
    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/threeten/bp/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_c
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x40 -> :sswitch_5
        0x42 -> :sswitch_7
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x45 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/Ser;->type:B

    .line 174
    iget-byte v0, p0, Lorg/threeten/bp/Ser;->type:B

    invoke-static {v0, p1}, Lorg/threeten/bp/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/Ser;->object:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-byte v0, p0, Lorg/threeten/bp/Ser;->type:B

    iget-object v1, p0, Lorg/threeten/bp/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 117
    return-void
.end method
