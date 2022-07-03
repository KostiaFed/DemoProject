def movie(card, ticket, percent)
  systemA = ticket
  systemB = card + ticket * percent
  ticket_count = 1
  until systemB.ceil < systemA.ceil
    ticket_count += 1
    systemA += ticket
    systemB += ticket * percent**ticket_count
  end
  ticket_count
end
